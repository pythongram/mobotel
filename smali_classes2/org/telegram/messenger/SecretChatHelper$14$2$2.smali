.class Lorg/telegram/messenger/SecretChatHelper$14$2$2;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14$2;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/messenger/SecretChatHelper$14$2;

    .prologue
    .line 1848
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1851
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1852
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z
    invoke-static {v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z

    .line 1854
    :try_start_18
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_5a

    .line 1858
    :goto_21
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$2;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1859
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1860
    const-string v2, "CreateEncryptedChatError"

    const v3, 0x7f07019f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1861
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1862
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1864
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_59
    return-void

    .line 1855
    :catch_5a
    move-exception v1

    .line 1856
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method
