.class Lorg/telegram/ui/ContactsActivity$3$1;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ContactsActivity$3;

.field final synthetic val$arg1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity$3;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ContactsActivity$3;

    .prologue
    .line 367
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$3$1;->this$1:Lorg/telegram/ui/ContactsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ContactsActivity$3$1;->val$arg1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 371
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "sms"

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity$3$1;->val$arg1:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "sms_body"

    const-string v3, "InviteText"

    const v4, 0x7f0702a1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$3$1;->this$1:Lorg/telegram/ui/ContactsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 377
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2b
    return-void

    .line 374
    :catch_2c
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method
