.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_DISCONNECT_IND"
.end annotation


# static fields
.field public static final DISCONNECTTYPE_FIELD_NUMBER:I = 0x1

.field public static final RIL_S_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final RIL_S_DISCONNECT_TYPE_IMMEDIATE:I = 0x1


# instance fields
.field private cachedSize:I

.field private disconnectType_:I

.field private hasDisconnectType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 622
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 710
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->clearDisconnectType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 648
    return-object p0
.end method

.method public clearDisconnectType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    .line 641
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 642
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    if-gez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getSerializedSize()I

    .line 671
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    return v0
.end method

.method public getDisconnectType()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result v1

    const/4 v2, 0x1

    .line 678
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 681
    :cond_0
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 682
    return v0
.end method

.method public hasDisconnectType()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 653
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
    .line 686
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 691
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 695
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    return-object p0

    .line 693
    :sswitch_0
    return-object p0

    .line 701
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->setDisconnectType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    goto :goto_0

    .line 691
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDisconnectType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    .line 636
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 637
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
    .line 659
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 658
    :cond_0
    return-void
.end method
