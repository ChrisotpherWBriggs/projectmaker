class Rfp2sController < ApplicationController
  before_action :set_rfp2, only: [:show, :edit, :update, :destroy]

  # GET /rfp2s
  # GET /rfp2s.json
  def index
    @rfp2s = Rfp2.all
  end

  # GET /rfp2s/1
  # GET /rfp2s/1.json
  def show
    @emptotal = @rfp2.employee2+@rfp2.ee_sp2+@rfp2.ee_child2+@rfp2.family2
    @total = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee)*@emptotal
    @tpsp = (@rfp2.employee*@rfp2.inempfee)+(@rfp2.ee_sp*@rfp2.inee_spfee)+(@rfp2.ee_child*@rfp2.inee_childfee)+(@rfp2.family*@rfp2.infamilyfee)+(@emptotal*@rfp2.intransplant)+(@emptotal*@rfp2.inmac)+(@emptotal*@rfp2.inagg_premium)
    @tpsp2 = (@rfp2.employee*@rfp2.outempfee)+(@rfp2.ee_sp*@rfp2.outee_spfee)+(@rfp2.ee_child*@rfp2.outee_childfee)+(@rfp2.family*@rfp2.outfamilyfee)+(@emptotal*@rfp2.outtransplant)+(@emptotal*@rfp2.outmac)+(@emptotal*@rfp2.outagg_premium)
    @mfct = (@total+@tpsp)
    @mfct2 = (@total+@tpsp2)
    @tmag = (@rfp2.employee2*@rfp2.inempfee2)+(@rfp2.ee_sp2*@rfp2.inee_spfee2)+(@rfp2.ee_child2*@rfp2.inee_childfee2)+(@rfp2.family2*@rfp2.infamilyfee2)
    @tmag2 = (@rfp2.employee2*@rfp2.outempfee2)+(@rfp2.ee_sp2*@rfp2.outee_spfee2)+(@rfp2.ee_child2*@rfp2.outee_childfee2)+(@rfp2.family2*@rfp2.outfamilyfee2)
    @tafc = (@total*12)+(@tpsp*12)
    @tafc2 = (@total*12)+(@tpsp2*12)
    @taal = (@tmag*12)
    @taal2 = (@tmag2*12)
    @epmt = (@tafc+@taal)
    @epmt2 = (@tafc2+@taal2)
    @empsum = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.inempfee+@rfp2.intransplant+@rfp2.inmac+@rfp2.inagg_premium+@rfp2.inempfee2)
    @empsum2 = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.outempfee+@rfp2.outtransplant+@rfp2.outmac+@rfp2.outagg_premium+@rfp2.outempfee2)
    
    @ee_spsum = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.inee_spfee+@rfp2.intransplant+@rfp2.inmac+@rfp2.inagg_premium+@rfp2.inee_spfee2)
    @ee_spsum2 = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.outee_spfee+@rfp2.outtransplant+@rfp2.outmac+@rfp2.outagg_premium+@rfp2.outee_spfee2)

    @ee_childsum = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.inee_childfee+@rfp2.intransplant+@rfp2.inmac+@rfp2.inagg_premium+@rfp2.inee_childfee2)
    @ee_childsum2 = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.outee_childfee+@rfp2.outtransplant+@rfp2.outmac+@rfp2.outagg_premium+@rfp2.outee_childfee2)

    @familysum = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.infamilyfee+@rfp2.intransplant+@rfp2.inmac+@rfp2.inagg_premium+@rfp2.infamilyfee2)
    @familysum2 = (@rfp2.administrator+@rfp2.ahdi+@rfp2.urcm+@rfp2.ppo+@rfp2.stop_loss+@rfp2.teladoc_consult+@rfp2.lab_card+@rfp2.hipaa+@rfp2.broker_fee+@rfp2.other_fee+@rfp2.outfamilyfee+@rfp2.outtransplant+@rfp2.outmac+@rfp2.outagg_premium+@rfp2.outfamilyfee2)

    @sumtotal = (@rfp2.startup+@rfp2.sbc+@rfp2.annual_fee+@rfp2.plan_document)

  end

  # GET /rfp2s/new
  def new
    @rfp2 = Rfp2.new
    
  end

  # GET /rfp2s/1/edit
  def edit
  end

  # POST /rfp2s
  # POST /rfp2s.json
  def create
    @rfp2 = Rfp2.new(rfp2_params)

    respond_to do |format|
      if @rfp2.save
        format.html { redirect_to @rfp2, notice: 'rfp2 was successfully created.' }
        format.json { render :show, status: :created, location: @rfp2 }
      else
        format.html { render :new }
        format.json { render json: @rfp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfp2s/1
  # PATCH/PUT /rfp2s/1.json
  def update
    respond_to do |format|
      if @rfp2.update(rfp2_params)
        format.html { redirect_to @rfp2, notice: 'rfp2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @rfp2 }
      else
        format.html { render :edit }
        format.json { render json: @rfp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfp2s/1
  # DELETE /rfp2s/1.json
  def destroy
    @rfp2.destroy
    respond_to do |format|
      format.html { redirect_to rfp2s_url, notice: 'rfp2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfp2
      @rfp2 = Rfp2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfp2_params
      params.require(:rfp2).permit(:pbm,:name,:eff_date,:network,:prep,:carrier,:inbenefits,:indeductable,:incoinsurance,:inoop,:inoffice_visit,:inspecialist,:inlab_xray,:inpreventative,:inteladoc,:inurgent_care,:inprescription,:iner,:outbenefits,:outdeductable,:outcoinsurance,:outoop,:outoffice_visit,:outspecialist,:outlab_xray,:outpreventative,:outteladoc,:outurgent_care,:outprescription,:outer,:inbenefits2,:indeductable2,:incoinsurance2,:inoop2,:inoffice_visit2,:inspecialist2,:inlab_xray2,:inpreventative2,:inteladoc2,:inurgent_care2,:inprescription2,:iner2,:outbenefits2,:outdeductable2,:outcoinsurance2,:outoop2,:outoffice_visit2,:outspecialist2,:outlab_xray2,:outpreventative2,:outteladoc2,:outurgent_care2,:outprescription2,:outer2,:administrator,:ahdi,:urcm,:ppo,:stop_loss,:teladoc_consult,:lab_card,:hipaa,:broker_fee,:other_fee,:total_admin,:plan_platform,:specific_deductable,:mar,:mlr,:employee,:inempfee,:outempfee,:ee_sp,:inee_spfee,:outee_spfee,:ee_child,:inee_childfee,:outee_childfee,:family,:infamilyfee,:outfamilyfee,:intransplant,:outtransplant,:inmac,:outmac,:inagg_premium,:outagg_premium,:intpsp,:inmfct,:outtpsp,:outmfct,:employee2,:inempfee2,:outempfee2,:ee_sp2,:inee_spfee2,:outee_spfee2,:ee_child2,:inee_childfee2,:outee_childfee2,:family2,:infamilyfee2,:outfamilyfee2,:total,:intotal,:outtotal,:intmal,:outtmal,:intafc,:outtfac,:intaal,:outtall,:inmax_total,:outmax_total,:inempsum,:outempsum,:inee_spsum,:outee_spsum,:inee_childsum,:outee_childsum,:infamilysum,:outfamilysum,:startup,:sbc,:annual_fee,:plan_document,:totalfees, cont_ids: [], other_ids: [])
    end

end