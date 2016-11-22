.class final Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BluetoothAvrcpDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DbHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider$DbHelper;->this$0:Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;

    .line 84
    const-string/jumbo v0, "btavrcp_ct.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 89
    const-string/jumbo v0, "BluetoothAvrcpDataProvider"

    const-string/jumbo v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider$DbHelper;->this$0:Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;->-wrap0(Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 95
    if-nez p2, :cond_1

    .line 96
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 p2, 0x1

    .line 101
    :cond_1
    const-string/jumbo v0, "BluetoothAvrcpDataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v2, ", which will destroy all old data"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider$DbHelper;->this$0:Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;->-wrap1(Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider$DbHelper;->this$0:Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;->-wrap0(Lcom/android/bluetooth/avrcp/BluetoothAvrcpDataProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    return-void
.end method
