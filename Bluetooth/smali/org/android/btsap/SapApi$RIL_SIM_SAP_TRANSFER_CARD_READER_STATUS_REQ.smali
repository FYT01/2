.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1722
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1707
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1766
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1760
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1

    .prologue
    .line 1710
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1711
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 1727
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->getSerializedSize()I

    .line 1729
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 1734
    const/4 v0, 0x0

    .local v0, "size":I
    const/4 v1, 0x0

    .line 1735
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1736
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1715
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
    .line 1740
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1744
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1745
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 1749
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1750
    return-object p0

    .line 1747
    :pswitch_0
    return-object p0

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .prologue
    .line 1719
    return-void
.end method
