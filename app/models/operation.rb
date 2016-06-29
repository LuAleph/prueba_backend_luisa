class Operation < ActiveRecord::Base

	#scopes
	#todas las piezas del inventario
	scope :item, -> {where(item: true)}

	# todas las piezas de inventario del primer operador registrado
	scope :first_worker -> {joins(:stock).where ("stock.worker_id": Worker.first.id)}

	#ultimas 5 operaciones

	scope :last_op, ->{order(id: :desc).limit(5) }

	#operaciones hechas el ultimo dia
	scope :last_day -> {where("DATE(created_at) = ?", Date.curent)}


	#piezas de inventario que no hayan sido utilizadas 
	scope :no_stock, -> {where(stock_id: nil)}

	belongs_to :stock
	has_many :operations, dependent: :destroyd
end
