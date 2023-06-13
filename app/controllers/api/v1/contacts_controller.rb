module Api
    module V1
        class ContactsController < ApplicationController
            before_action :set_post, only: [:show, :update, :destroy]
        
            def index
                posts = Contact.order(created_at: :desc)
                render json: { status: 'SUCCESS', message: 'Loaded contacts', data: posts }
            end

            def show
                render json: { status: 'SUCCESS', message: 'Loaded the contact', data: @post }
            end

            def create
                post = Contact.new(post_params)
                if post.save
                    render json: { status: 'SUCCESS', data: post }
                else
                    render json: { status: 'ERROR', data: post.errors }
                end
            end

            def destroy
                @post.destroy
                render json: { status: 'SUCCESS', message: 'Deleted the contact', data: @post }
            end

            def update
                if @post.update(post_params)
                    render json: { status: 'SUCCESS', message: 'Updated the contact', data: @post }
                else
                    render json: { status: 'SUCCESS', message: 'Not updated', data: @post.errors }
                end
            end

            private

            def set_post
                @post = Contact.find(params[:id])
            end

            def post_params
                params.require(:contact).permit(:name, :gender, :mail, :types, :body)
            end
        end
    end
end
