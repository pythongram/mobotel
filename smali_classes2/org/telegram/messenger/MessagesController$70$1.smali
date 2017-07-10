.class Lorg/telegram/messenger/MessagesController$70$1;
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
    .line 4402
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$70$1;->this$1:Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4405
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$70$1;->this$1:Lorg/telegram/messenger/MessagesController$70;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$70;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4407
    :try_start_c
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$70$1;->this$1:Lorg/telegram/messenger/MessagesController$70;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$70;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    .line 4412
    :cond_13
    :goto_13
    return-void

    .line 4408
    :catch_14
    move-exception v0

    .line 4409
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method
