.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_STATUS_IND"
.end annotation


# static fields
.field public static final RIL_SIM_STATUS_CARD_INSERTED:I = 0x4

.field public static final RIL_SIM_STATUS_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final RIL_SIM_STATUS_CARD_REMOVED:I = 0x3

.field public static final RIL_SIM_STATUS_CARD_RESET:I = 0x1

.field public static final RIL_SIM_STATUS_RECOVERED:I = 0x5

.field public static final RIL_SIM_STATUS_UNKNOWN_ERROR:I = 0x0

.field public static final STATUSCHANGE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasStatusChange:Z

.field private statusChange_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1614
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1647
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1601
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1699
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1693
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->clearStatusChange()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1631
    return-object p0
.end method

.method public clearStatusChange()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1623
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    .line 1624
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1625
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    if-gez v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getSerializedSize()I

    .line 1654
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result v1

    const/4 v2, 0x1

    .line 1661
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1664
    :cond_0
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1665
    return v0
.end method

.method public getStatusChange()I
    .locals 1

    .prologue
    .line 1616
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    return v0
.end method

.method public hasStatusChange()Z
    .locals 1

    .prologue
    .line 1615
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1635
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1636
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1669
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1674
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1678
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1679
    return-object p0

    .line 1676
    :sswitch_0
    return-object p0

    .line 1684
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->setStatusChange(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    goto :goto_0

    .line 1674
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setStatusChange(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    .line 1619
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1620
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1642
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1641
    :cond_0
    return-void
.end method
