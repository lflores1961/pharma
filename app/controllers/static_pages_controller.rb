class StaticPagesController < ApplicationController
  skip_before_action :authorize

  def inicio
    @new_post = Post.head
    @old_posts = Post.tail
    # @rest = Post.all - @first_post
  end

  def productos
    redirect_to inicio_path
  end

  def contacto
  end
end
