.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForStringBuffer"
.end annotation


# instance fields
.field private operation:Ljavax/obex/Operation;

.field private outputStream:Ljava/io/OutputStream;

.field private phoneOwnVCard:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "ownerVCard"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 955
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 956
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    .line 957
    if-eqz p3, :cond_1

    .line 958
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 959
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v1, "phone own number vcard:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_1
    return-void
.end method

.method private write(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vCard"    # Ljava/lang/String;

    .prologue
    .line 966
    if-eqz p1, :cond_0

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    const/4 v1, 0x1

    return v1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vcard"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-interface {v1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    .line 979
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 982
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v1, 0x0

    return v1
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v1, "CloseStream failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v1, "CloseStream ok!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
