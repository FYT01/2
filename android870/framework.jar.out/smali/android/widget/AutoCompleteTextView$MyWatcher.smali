.class Landroid/widget/AutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$MyWatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->doAfterTextChanged()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$MyWatcher;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->doBeforeTextChanged()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    return-void
.end method
