.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1268
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1287
    :cond_8
    :goto_8
    return-void

    .line 1284
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1272
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1277
    return-void
.end method
