.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppBtEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBtEnabled:Z

.field private mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "contentView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    const-string/jumbo v3, "\n"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->enableBluetooth()V

    .line 88
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iput-boolean v2, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mBtEnabled:Z

    .line 91
    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v2, 0x0

    .line 91
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "in":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 102
    .end local v0    # "in":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mBtEnabled:Z

    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 65
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1010355

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 66
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 68
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 69
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 71
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->setupAlert()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 111
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mBtEnabled:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanUpSendingFileInfo()V

    .line 108
    :cond_0
    return-void
.end method
