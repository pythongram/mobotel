.class Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$3"    # Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_2c

    .line 196
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v1, :cond_2b

    .line 197
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_2b
    return-void

    .line 193
    :catch_2c
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
