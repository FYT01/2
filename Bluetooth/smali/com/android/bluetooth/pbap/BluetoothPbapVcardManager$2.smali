.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardPhoneNumberTranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "rawValue"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 822
    const/16 v1, 0x2c

    const/16 v2, 0x70

    .line 821
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 822
    const/16 v2, 0x3b

    .line 823
    const/16 v3, 0x77

    .line 821
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "numberWithControlSequence":Ljava/lang/String;
    return-object v0
.end method
