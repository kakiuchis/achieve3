class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # ログインユーザーに紐付けてインスタンス生成するためbuildメソッドを使用します。
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog

    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_path(@blog), notice: 'コメントを投稿しました。' }
        format.json { render :show, status: :created, location: @comment }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    # @blog = @comment.blog
    @comment.destroy
    render :json => {:comment => @comment}
    # format.html { redirect_to blogs_path(@blog), notice: "ブログを削除しました！" }
    # format.json { render :show, status: :deleted, location: @comment }
    # format.js { render :index }
    # redirect_to blogs_path, notice: "ブログを削除しました！"
    # if @comment.destroy
    #   format.html { redirect_to blogs_path, notice: "ブログを削除しました！" }
    #   format.js { render :index }
    # end
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:blog_id, :content)
    end
end