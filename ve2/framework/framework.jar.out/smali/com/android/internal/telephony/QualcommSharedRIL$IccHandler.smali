.class Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;
.super Landroid/os/Handler;
.source "QualcommSharedRIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QualcommSharedRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1


# instance fields
.field private mRadioOn:Z

.field private mRil:Lcom/android/internal/telephony/RIL;

.field final synthetic this$0:Lcom/android/internal/telephony/QualcommSharedRIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/QualcommSharedRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "ril"
    .parameter "looper"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->this$0:Lcom/android/internal/telephony/QualcommSharedRIL;

    .line 681
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRadioOn:Z

    .line 682
    iput-object p2, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    .line 683
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "paramMessage"

    .prologue
    const/4 v8, 0x2

    .line 686
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 762
    :goto_0
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Unknown Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_1
    return-void

    .line 688
    :pswitch_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRadioOn:Z

    .line 689
    const-string v6, "RILJ"

    const-string v7, "Radio on -> Forcing sim status update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 693
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 694
    .local v4, asyncResult:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 695
    const-string v6, "RILJ"

    const-string v7, "IccCardStatusDone shouldn\'t return exceptions!"

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 698
    :cond_1
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/IccCardStatus;

    .line 699
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v6

    if-nez v6, :cond_2

    .line 700
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 704
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1

    .line 706
    :cond_2
    const/4 v0, -0x1

    .line 707
    .local v0, appIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->this$0:Lcom/android/internal/telephony/QualcommSharedRIL;

    iget v6, v6, Lcom/android/internal/telephony/QualcommSharedRIL;->mPhoneType:I

    if-ne v6, v8, :cond_3

    .line 708
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 709
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_2
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 716
    .local v3, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v1, v3, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 717
    .local v1, app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    iget-object v2, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 719
    .local v2, app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v6, Lcom/android/internal/telephony/QualcommSharedRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 722
    :pswitch_2
    sget-object v6, Lcom/android/internal/telephony/QualcommSharedRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 729
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 711
    .end local v1           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v2           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v3           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 712
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 726
    .restart local v1       #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .restart local v2       #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .restart local v3       #application:Lcom/android/internal/telephony/IccCardApplication;
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_1

    .line 734
    :pswitch_4
    sget-object v6, Lcom/android/internal/telephony/QualcommSharedRIL$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 741
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 738
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_1

    .line 751
    .end local v0           #appIndex:I
    .end local v1           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v2           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v3           #application:Lcom/android/internal/telephony/IccCardApplication;
    .end local v4           #asyncResult:Landroid/os/AsyncResult;
    .end local v5           #status:Lcom/android/internal/telephony/IccCardStatus;
    :pswitch_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRadioOn:Z

    if-eqz v6, :cond_4

    .line 752
    const-string v6, "RILJ"

    const-string v7, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x3

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 755
    :cond_4
    const-string v6, "RILJ"

    const-string v7, "Received EVENT_ICC_STATUS_CHANGED while radio is not ON. Ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 759
    :pswitch_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRadioOn:Z

    goto/16 :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 719
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 722
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 734
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 771
    return-void
.end method
