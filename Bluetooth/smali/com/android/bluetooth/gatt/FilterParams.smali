.class public Lcom/android/bluetooth/gatt/FilterParams;
.super Ljava/lang/Object;
.source "FilterParams.java"


# instance fields
.field private mClientIf:I

.field private mDelyMode:I

.field private mFeatSeln:I

.field private mFiltIndex:I

.field private mFiltLogicType:I

.field private mFoundTimeOut:I

.field private mFoundTimeOutCnt:I

.field private mListLogicType:I

.field private mLostTimeOut:I

.field private mNumOfTrackEntries:I

.field private mRssiHighValue:I

.field private mRssiLowValue:I


# direct methods
.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .param p1, "client_if"    # I
    .param p2, "filt_index"    # I
    .param p3, "feat_seln"    # I
    .param p4, "list_logic_type"    # I
    .param p5, "filt_logic_type"    # I
    .param p6, "rssi_high_thres"    # I
    .param p7, "rssi_low_thres"    # I
    .param p8, "dely_mode"    # I
    .param p9, "found_timeout"    # I
    .param p10, "lost_timeout"    # I
    .param p11, "found_timeout_cnt"    # I
    .param p12, "num_of_tracking_entries"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/bluetooth/gatt/FilterParams;->mClientIf:I

    .line 41
    iput p2, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltIndex:I

    .line 42
    iput p3, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFeatSeln:I

    .line 43
    iput p4, p0, Lcom/android/bluetooth/gatt/FilterParams;->mListLogicType:I

    .line 44
    iput p5, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltLogicType:I

    .line 45
    iput p6, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiHighValue:I

    .line 46
    iput p7, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiLowValue:I

    .line 47
    iput p8, p0, Lcom/android/bluetooth/gatt/FilterParams;->mDelyMode:I

    .line 48
    iput p9, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOut:I

    .line 49
    iput p10, p0, Lcom/android/bluetooth/gatt/FilterParams;->mLostTimeOut:I

    .line 50
    iput p11, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOutCnt:I

    .line 51
    iput p12, p0, Lcom/android/bluetooth/gatt/FilterParams;->mNumOfTrackEntries:I

    .line 38
    return-void
.end method


# virtual methods
.method public getClientIf()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mClientIf:I

    return v0
.end method

.method public getDelyMode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mDelyMode:I

    return v0
.end method

.method public getFeatSeln()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFeatSeln:I

    return v0
.end method

.method public getFiltIndex()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltIndex:I

    return v0
.end method

.method public getFiltLogicType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltLogicType:I

    return v0
.end method

.method public getFoundTimeOutCnt()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOutCnt:I

    return v0
.end method

.method public getFoundTimeout()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOut:I

    return v0
.end method

.method public getListLogicType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mListLogicType:I

    return v0
.end method

.method public getLostTimeout()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mLostTimeOut:I

    return v0
.end method

.method public getNumOfTrackEntries()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mNumOfTrackEntries:I

    return v0
.end method

.method public getRSSIHighValue()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiHighValue:I

    return v0
.end method

.method public getRSSILowValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiLowValue:I

    return v0
.end method
