.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_APDU_RSP"
.end annotation


# static fields
.field public static final APDURESPONSE_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_FIELD_NUMBER:I = 0x2

.field public static final RIL_E_GENERIC_FAILURE:I = 0x1

.field public static final RIL_E_SIM_ABSENT:I = 0x4

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x3

.field public static final RIL_E_SIM_NOT_READY:I = 0x2

.field public static final RIL_E_SUCCESS:I = 0x0

.field public static final RIL_TYPE_APDU:I = 0x0

.field public static final RIL_TYPE_APDU7816:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private hasApduResponse:Z

.field private hasResponse:Z

.field private hasType:Z

.field private response_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 856
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 872
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 889
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 906
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 948
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 856
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 922
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 923
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearApduResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 924
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 925
    return-object p0
.end method

.method public clearApduResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    .line 916
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 917
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 898
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    .line 899
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 900
    return-object p0
.end method

.method public clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    .line 882
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 883
    return-object p0
.end method

.method public getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getSerializedSize()I

    .line 955
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 962
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 965
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v1

    const/4 v2, 0x2

    .line 966
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 969
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x3

    .line 970
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    :cond_2
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 974
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    return v0
.end method

.method public hasApduResponse()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    if-nez v0, :cond_0

    return v1

    .line 930
    :cond_0
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    if-nez v0, :cond_1

    return v1

    .line 931
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
    .line 978
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 983
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 987
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    return-object p0

    .line 985
    :sswitch_0
    return-object p0

    .line 993
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    goto :goto_0

    .line 997
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    goto :goto_0

    .line 1001
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setApduResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    goto :goto_0

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setApduResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    .line 911
    iput-object p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 912
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    .line 894
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 895
    return-object p0
.end method

.method public setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    .line 877
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 878
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
    .line 937
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 940
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 943
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 936
    :cond_2
    return-void
.end method
