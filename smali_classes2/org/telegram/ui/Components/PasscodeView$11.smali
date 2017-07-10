.class Lorg/telegram/ui/Components/PasscodeView$11;
.super Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 913
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 919
    :cond_d
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 4

    .prologue
    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const-string v1, "FingerprintNotRecognized"

    const v2, 0x7f07021c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 929
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .registers 5
    .param p1, "result"    # Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .prologue
    .line 934
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 935
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_22

    .line 940
    :cond_15
    :goto_15
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1202(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 941
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V

    .line 942
    return-void

    .line 937
    :catch_22
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
