class GossipsController < ApplicationController

	def index
		@gossips = Gossip.all
	end

	def show
		@gossips = Gossip.find(params[:id])
	end

	def edit
		@gossips = Gossip.find(params[:id])
	end

	def update
		@gossips = Gossip.find(params[:id])
		@gossips.update(gossip_params)
		redirect_to gossips_path
	end

	def new
		@gossips = Gossip.new
	end

	def create
		gossip = Gossip.create(gossip_params)
		redirect_to gossips_path
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		redirect_to gossips_path
	end

	private

	def gossip_params
		params.require(:gossip).permit(:titre, :content)
	end
end
