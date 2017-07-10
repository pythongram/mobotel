.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 896
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->val$this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 915
    :cond_8
    :goto_8
    return-void

    .line 912
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I
    invoke-static {v1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 900
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 905
    return-void
.end method
