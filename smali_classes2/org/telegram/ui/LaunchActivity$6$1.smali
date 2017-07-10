.class Lorg/telegram/ui/LaunchActivity$6$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$6;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$6;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$id_field:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$6;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$6;

    .prologue
    .line 458
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$6$1;->this$1:Lorg/telegram/ui/LaunchActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_8d

    .line 464
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 465
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "str":Ljava/lang/String;
    :goto_50
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://t.me/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 472
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->this$1:Lorg/telegram/ui/LaunchActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # invokes: Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z
    invoke-static {v2, v0, v4, v4, v4}, Lorg/telegram/ui/LaunchActivity;->access$800(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 477
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "str":Ljava/lang/String;
    :goto_7d
    return-void

    .line 468
    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_50

    .line 475
    .end local v1    # "str":Ljava/lang/String;
    :cond_8d
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$6$1;->val$id_field:Landroid/widget/EditText;

    const-string v3, "EnterYourID"

    const v4, 0x7f0706df

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_7d
.end method
