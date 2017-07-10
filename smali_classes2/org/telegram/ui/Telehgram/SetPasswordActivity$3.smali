.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$500(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$000(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    if-ne v0, v2, :cond_32

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    if-nez v0, :cond_24

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processNext()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    .line 215
    :cond_23
    :goto_23
    return-void

    .line 208
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    if-ne v0, v2, :cond_23

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    goto :goto_23

    .line 212
    :cond_32
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    goto :goto_23
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 200
    return-void
.end method
