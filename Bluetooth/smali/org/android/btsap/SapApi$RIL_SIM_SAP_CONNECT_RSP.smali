.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_CONNECT_RSP"
.end annotation


# static fields
.field public static final MAX_MESSAGE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_SAP_CONNECT_FAILURE:I = 0x1

.field public static final RIL_E_SAP_CONNECT_OK_CALL_ONGOING:I = 0x4

.field public static final RIL_E_SAP_MSG_SIZE_TOO_LARGE:I = 0x2

.field public static final RIL_E_SAP_MSG_SIZE_TOO_SMALL:I = 0x3

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasMaxMessageSize:Z

.field private hasResponse:Z

.field private maxMessageSize_:I

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 366
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 383
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 354
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    .line 399
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 401
    return-object p0
.end method

.method public clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    .line 393
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 394
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    .line 376
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 377
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getSerializedSize()I

    .line 427
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    return v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v1

    const/4 v2, 0x1

    .line 434
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v1

    const/4 v2, 0x2

    .line 438
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_1
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 442
    return v0
.end method

.method public hasMaxMessageSize()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 406
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
    .line 446
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 451
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 455
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    return-object p0

    .line 453
    :sswitch_0
    return-object p0

    .line 461
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    goto :goto_0

    .line 465
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    goto :goto_0

    .line 451
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    .line 388
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 389
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    .line 371
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 372
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
    .line 412
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 411
    :cond_1
    return-void
.end method
