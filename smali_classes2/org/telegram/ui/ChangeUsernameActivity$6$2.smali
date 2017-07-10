.class Lorg/telegram/ui/ChangeUsernameActivity$6$2;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeUsernameActivity$6;

    .prologue
    .line 418
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_18

    .line 426
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChangeUsernameActivity$6;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 427
    return-void

    .line 423
    :catch_18
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
