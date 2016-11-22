.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_APDU_REQ"
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x2

.field public static final RIL_TYPE_APDU:I = 0x0

.field public static final RIL_TYPE_APDU7816:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private command_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasCommand:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->type_:I

    .line 750
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->command_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 788
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->cachedSize:I

    .line 724
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    .line 766
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->clearCommand()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->cachedSize:I

    .line 768
    return-object p0
.end method

.method public clearCommand()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand:Z

    .line 760
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->command_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 761
    return-object p0
.end method

.method public clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 742
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType:Z

    .line 743
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->type_:I

    .line 744
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->getSerializedSize()I

    .line 795
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->cachedSize:I

    return v0
.end method

.method public getCommand()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->command_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 802
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 805
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->getCommand()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    .line 806
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    :cond_1
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->cachedSize:I

    .line 810
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->type_:I

    return v0
.end method

.method public hasCommand()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType:Z

    if-nez v0, :cond_0

    return v1

    .line 773
    :cond_0
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand:Z

    if-nez v0, :cond_1

    return v1

    .line 774
    :cond_1
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
    .line 814
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 819
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 823
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    return-object p0

    .line 821
    :sswitch_0
    return-object p0

    .line 829
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    goto :goto_0

    .line 833
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->setCommand(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;

    goto :goto_0

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCommand(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand:Z

    .line 755
    iput-object p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->command_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 756
    return-object p0
.end method

.method public setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType:Z

    .line 738
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->type_:I

    .line 739
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
    .line 780
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 783
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;->getCommand()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 779
    :cond_1
    return-void
.end method
