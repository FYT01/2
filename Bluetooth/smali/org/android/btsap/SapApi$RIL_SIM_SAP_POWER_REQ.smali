.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_POWER_REQ"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private state_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1264
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1226
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->clearState()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1248
    return-object p0
.end method

.method public clearState()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1240
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    .line 1241
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1242
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 1269
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getSerializedSize()I

    .line 1271
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getState()Z

    move-result v1

    const/4 v2, 0x1

    .line 1278
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1281
    :cond_0
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1282
    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1252
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1253
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
    .line 1286
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1291
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1295
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1296
    return-object p0

    .line 1293
    :sswitch_0
    return-object p0

    .line 1301
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    goto :goto_0

    .line 1291
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    .line 1236
    iput-boolean p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1237
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
    .line 1259
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getState()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1258
    :cond_0
    return-void
.end method
