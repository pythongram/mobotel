.class Lorg/telegram/ui/ChangeUsernameActivity$6;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 5
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 399
    if-nez p2, :cond_e

    move-object v0, p1

    .line 400
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 401
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$6$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChangeUsernameActivity$6$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 430
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_d
    return-void

    .line 418
    :cond_e
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$6$2;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChangeUsernameActivity$6$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method
