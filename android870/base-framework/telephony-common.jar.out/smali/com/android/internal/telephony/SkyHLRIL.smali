.class public Lcom/android/internal/telephony/SkyHLRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SkyHLRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SkyHLRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const-string v1, "getRadioCapability: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SkyHLRIL;->riljLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyHLRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "ret":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "response":I
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_1

    .end local v2    # "ret":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SkyHLRIL;->unsljLogRet(ILjava/lang/Object;)V

    const-string v3, "ril.socket.reset"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setRadioPower(ZLandroid/os/Message;)V

    :cond_0
    const-string v3, "ril.socket.reset"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    iget v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SkyHLRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x40a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40a
        :pswitch_1
    .end packed-switch
.end method
