.class Lorg/telegram/messenger/SecretChatHelper$14$3;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$14;

    .prologue
    .line 1871
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1874
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z
    invoke-static {v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z

    .line 1875
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1877
    :try_start_14
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1c

    .line 1882
    :cond_1b
    :goto_1b
    return-void

    .line 1878
    :catch_1c
    move-exception v0

    .line 1879
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method
