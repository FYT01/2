.class public final Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactCursorFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;
    .param p1, "offset"    # I

    .prologue
    .line 687
    invoke-static {p0, p1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 12
    .param p0, "contactCursor"    # Landroid/database/Cursor;
    .param p1, "startPoint"    # I
    .param p2, "endPoint"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 699
    const-string/jumbo v5, "contact_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, "contactIdColumn":I
    const-wide/16 v6, -0x1

    .line 703
    .local v6, "previousContactId":J
    const/4 v4, 0x1

    .line 704
    .local v4, "currentOffset":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v11, [Ljava/lang/String;

    .line 705
    const-string/jumbo v8, "contact_id"

    aput-object v8, v5, v10

    .line 704
    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 707
    .local v1, "contactIdsCursor":Landroid/database/MatrixCursor;
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-gt v4, p2, :cond_2

    .line 708
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 709
    .local v2, "currentContactId":J
    cmp-long v5, v6, v2

    if-eqz v5, :cond_0

    .line 710
    move-wide v6, v2

    .line 711
    if-lt v4, p1, :cond_1

    .line 712
    new-array v5, v11, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 713
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "contactIdsCursor.addRow: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "currentContactId":J
    :cond_2
    return-object v1
.end method
