.class Lorg/telegram/ui/TwoStepVerificationActivity$7$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$7;

    .prologue
    .line 410
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1802(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_83

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-boolean v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->val$silent:Z

    if-nez v1, :cond_2b

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v4, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v1, :cond_c2

    :cond_27
    move v1, v3

    :goto_28
    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z
    invoke-static {v4, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1902(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    .line 418
    :cond_2b
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v4, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$account_Password;

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v4, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c5

    :goto_4a
    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2002(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 421
    .local v0, "salt":[B
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v3, v3, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    .line 425
    .end local v0    # "salt":[B
    :cond_83
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->type:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$100(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->destroyed:Z
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2100(Lorg/telegram/ui/TwoStepVerificationActivity;)Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_ba

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$7$1;)V

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2202(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 438
    :cond_ba
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 439
    return-void

    :cond_c2
    move v1, v2

    .line 416
    goto/16 :goto_28

    :cond_c5
    move v3, v2

    .line 419
    goto :goto_4a
.end method
