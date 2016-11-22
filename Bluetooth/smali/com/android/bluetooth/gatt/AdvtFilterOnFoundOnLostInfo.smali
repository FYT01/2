.class public Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
.super Ljava/lang/Object;
.source "AdvtFilterOnFoundOnLostInfo.java"


# instance fields
.field private mAddrType:I

.field private mAddress:Ljava/lang/String;

.field private mAdvInfoPresent:I

.field private mAdvPkt:[B

.field private mAdvPktLen:I

.field private mAdvState:I

.field private mClientIf:I

.field private mFiltIndex:I

.field private mRssiValue:I

.field private mScanRsp:[B

.field private mScanRspLen:I

.field private mTimeStamp:I

.field private mTxPower:I


# direct methods
.method public constructor <init>(II[BI[BIIILjava/lang/String;IIII)V
    .locals 0
    .param p1, "client_if"    # I
    .param p2, "adv_pkt_len"    # I
    .param p3, "adv_pkt"    # [B
    .param p4, "scan_rsp_len"    # I
    .param p5, "scan_rsp"    # [B
    .param p6, "filt_index"    # I
    .param p7, "adv_state"    # I
    .param p8, "adv_info_present"    # I
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "addr_type"    # I
    .param p11, "tx_power"    # I
    .param p12, "rssi_value"    # I
    .param p13, "time_stamp"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    .line 49
    iput p2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    .line 50
    iput-object p3, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    .line 51
    iput p4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    .line 52
    iput-object p5, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    .line 53
    iput p6, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    .line 54
    iput p7, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    .line 55
    iput p8, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    .line 56
    iput-object p9, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    .line 57
    iput p10, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    .line 58
    iput p11, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    .line 59
    iput p12, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    .line 60
    iput p13, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    .line 46
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    return v0
.end method

.method public getAdvInfoPresent()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    return v0
.end method

.method public getAdvPacketData()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    return-object v0
.end method

.method public getAdvPacketLen()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    return v0
.end method

.method public getAdvState()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    return v0
.end method

.method public getClientIf()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    return v0
.end method

.method public getFiltIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    return v0
.end method

.method public getRSSIValue()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    return v0
.end method

.method public getResult()[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v2

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    array-length v2, v2

    :goto_0
    add-int v1, v4, v2

    .line 117
    .local v1, "resultLength":I
    new-array v0, v1, [B

    .line 118
    .local v0, "result":[B
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    :cond_0
    return-object v0

    .end local v0    # "result":[B
    .end local v1    # "resultLength":I
    :cond_1
    move v2, v3

    .line 116
    goto :goto_0
.end method

.method public getScanRspData()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    return-object v0
.end method

.method public getScanRspLen()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    return v0
.end method
