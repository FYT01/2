.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_RESET_SIM_RSP"
.end annotation


# static fields
.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_GENERIC_FAILURE:I = 0x2

.field public static final RIL_E_SIM_ABSENT:I = 0xb

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x11

.field public static final RIL_E_SIM_NOT_READY:I = 0x10

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasResponse:Z

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1508
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->response_:I

    .line 1541
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->cachedSize:I

    .line 1496
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1593
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1587
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 1

    .prologue
    .line 1523
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    .line 1524
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->cachedSize:I

    .line 1525
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1517
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse:Z

    .line 1518
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->response_:I

    .line 1519
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1544
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 1546
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getSerializedSize()I

    .line 1548
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1510
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getResponse()I

    move-result v1

    const/4 v2, 0x1

    .line 1555
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1558
    :cond_0
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->cachedSize:I

    .line 1559
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1530
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
    .line 1563
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1568
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1572
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1573
    return-object p0

    .line 1570
    :sswitch_0
    return-object p0

    .line 1578
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    goto :goto_0

    .line 1568
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse:Z

    .line 1513
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->response_:I

    .line 1514
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
    .line 1536
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getResponse()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1535
    :cond_0
    return-void
.end method
