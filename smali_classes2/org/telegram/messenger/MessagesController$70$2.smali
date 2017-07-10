.class Lorg/telegram/messenger/MessagesController$70$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$70;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$70;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$70;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$70;

    .prologue
    .line 4417
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$70$2;->this$1:Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4420
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$70$2;->this$1:Lorg/telegram/messenger/MessagesController$70;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$70;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_49

    .line 4422
    :try_start_c
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$70$2;->this$1:Lorg/telegram/messenger/MessagesController$70;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$70;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_4a

    .line 4426
    :goto_13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$70$2;->this$1:Lorg/telegram/messenger/MessagesController$70;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$70;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4427
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4428
    const-string v2, "ErrorOccurred"

    const v3, 0x7f070210

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4429
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4432
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_49
    return-void

    .line 4423
    :catch_4a
    move-exception v1

    .line 4424
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method
