class RfpsController < ApplicationController
  before_action :set_rfp, only: [:show, :edit, :update, :destroy]

  # GET /rfps
  # GET /rfps.json
  def index
    @rfps = Rfp.all
  end

  # GET /rfps/1
  # GET /rfps/1.json
  def show
    @emptotal = @rfp.employee2+@rfp.ee_sp2+@rfp.ee_child2+@rfp.family2
    @total = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee)*@emptotal
    @tpsp = (@rfp.employee*@rfp.inempfee)+(@rfp.ee_sp*@rfp.inee_spfee)+(@rfp.ee_child*@rfp.inee_childfee)+(@rfp.family*@rfp.infamilyfee)+(@emptotal*@rfp.intransplant)+(@emptotal*@rfp.inmac)+(@emptotal*@rfp.inagg_premium)
    @tpsp2 = (@rfp.employee*@rfp.outempfee)+(@rfp.ee_sp*@rfp.outee_spfee)+(@rfp.ee_child*@rfp.outee_childfee)+(@rfp.family*@rfp.outfamilyfee)+(@emptotal*@rfp.outtransplant)+(@emptotal*@rfp.outmac)+(@emptotal*@rfp.outagg_premium)
    @mfct = (@total+@tpsp)
    @mfct2 = (@total+@tpsp2)
    @tmag = (@rfp.employee2*@rfp.inempfee2)+(@rfp.ee_sp2*@rfp.inee_spfee2)+(@rfp.ee_child2*@rfp.inee_childfee2)+(@rfp.family2*@rfp.infamilyfee2)
    @tmag2 = (@rfp.employee2*@rfp.outempfee2)+(@rfp.ee_sp2*@rfp.outee_spfee2)+(@rfp.ee_child2*@rfp.outee_childfee2)+(@rfp.family2*@rfp.outfamilyfee2)
    @tafc = (@total*12)+(@tpsp*12)
    @tafc2 = (@total*12)+(@tpsp2*12)
    @taal = (@tmag*12)
    @taal2 = (@tmag2*12)
    @epmt = (@tafc+@taal)
    @epmt2 = (@tafc2+@taal2)
    @empsum = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.inempfee+@rfp.intransplant+@rfp.inmac+@rfp.inagg_premium+@rfp.inempfee2)
    @empsum2 = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.outempfee+@rfp.outtransplant+@rfp.outmac+@rfp.outagg_premium+@rfp.outempfee2)
    
    @ee_spsum = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.inee_spfee+@rfp.intransplant+@rfp.inmac+@rfp.inagg_premium+@rfp.inee_spfee2)
    @ee_spsum2 = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.outee_spfee+@rfp.outtransplant+@rfp.outmac+@rfp.outagg_premium+@rfp.outee_spfee2)

    @ee_childsum = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.inee_childfee+@rfp.intransplant+@rfp.inmac+@rfp.inagg_premium+@rfp.inee_childfee2)
    @ee_childsum2 = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.outee_childfee+@rfp.outtransplant+@rfp.outmac+@rfp.outagg_premium+@rfp.outee_childfee2)

    @familysum = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.infamilyfee+@rfp.intransplant+@rfp.inmac+@rfp.inagg_premium+@rfp.infamilyfee2)
    @familysum2 = (@rfp.administrator+@rfp.ahdi+@rfp.urcm+@rfp.ppo+@rfp.stop_loss+@rfp.teladoc_consult+@rfp.lab_card+@rfp.hipaa+@rfp.broker_fee+@rfp.other_fee+@rfp.outfamilyfee+@rfp.outtransplant+@rfp.outmac+@rfp.outagg_premium+@rfp.outfamilyfee2)

    @sumtotal = (@rfp.startup+@rfp.sbc+@rfp.annual_fee+@rfp.plan_document)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@rfp.name}" + "1 option"
      end
    end

  end

  # GET /rfps/new
  def new
    @rfp = Rfp.new
    
  end

  # GET /rfps/1/edit
  def edit
  end

  # POST /rfps
  # POST /rfps.json
  def create
    @rfp = Rfp.new(rfp_params)

    respond_to do |format|
      if @rfp.save
        format.html { redirect_to @rfp, notice: 'Rfp was successfully created.' }
        format.json { render :show, status: :created, location: @rfp }
      else
        format.html { render :new }
        format.json { render json: @rfp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfps/1
  # PATCH/PUT /rfps/1.json
  def update
    respond_to do |format|
      if @rfp.update(rfp_params)
        format.html { redirect_to @rfp, notice: 'Rfp was successfully updated.' }
        format.json { render :show, status: :ok, location: @rfp }
      else
        format.html { render :edit }
        format.json { render json: @rfp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfps/1
  # DELETE /rfps/1.json
  def destroy
    @rfp.destroy
    respond_to do |format|
      format.html { redirect_to rfps_url, notice: 'Rfp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfp
      @rfp = Rfp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfp_params
      params.require(:rfp).permit(:pbm, :name, :eff_date, :network, :prep, :carrier, :inbenefits, :indeductable, :incoinsurance, 
        :inoop, :inoffice_visit, :inspecialist, :inlab_xray, :inpreventative, :inteladoc, :inurgent_care, :inprescription, :iner, 
        :outbenefits, :outdeductable, :outcoinsurance, :outoop, :outoffice_visit, :outspecialist, :outlab_xray, :outpreventative, 
        :outteladoc, :outurgent_care, :outprescription, :outer, :administrator, :ahdi, :urcm, :ppo, :stop_loss, :teladoc_consult, 
        :lab_card, :hipaa, :broker_fee, :other_fee, :total_admin, :plan_platform, :specific_deductable, :mar, :mlr, :employee, 
        :inempfee, :outempfee, :ee_sp, :inee_spfee, :outee_spfee, :ee_child, :inee_childfee, :outee_childfee, :family, :infamilyfee, 
        :outfamilyfee, :intransplant, :outtransplant, :inmac, :outmac, :inagg_premium, :outagg_premium, :intpsp, :inmfct, :outtpsp, 
        :outmfct, :employee2, :inempfee2, :outempfee2, :ee_sp2, :inee_spfee2, :outee_spfee2, :ee_child2, :inee_childfee2, :outee_childfee2, 
        :family2, :infamilyfee2, :outfamilyfee2, :total, :intotal, :outtotal, :intmal, :outtmal, :intafc, :outtfac, :intaal, :outtall, 
        :inmax_total, :outmax_total, :inempsum, :outempsum, :inee_spsum, :outee_spsum, :inee_childsum, :outee_childsum, :infamilysum, 
        :outfamilysum, :startup, :sbc, :annual_fee, :plan_document, :totalfees, cont_ids: [], other_ids: [])
    end

end
