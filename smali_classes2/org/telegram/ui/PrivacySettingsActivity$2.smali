.class Lorg/telegram/ui/PrivacySettingsActivity$2;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 233
    .end local p1    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return-void

    .line 148
    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_1e

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {v2}, Lorg/telegram/ui/BlockedUsersActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_a

    .line 150
    :cond_1e
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_31

    .line 151
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v2}, Lorg/telegram/ui/SessionsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_a

    .line 152
    :cond_31
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_9c

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 156
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "DeleteAccountTitle"

    const v4, 0x7f0701cb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 158
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string v4, "Months"

    .line 159
    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Months"

    .line 160
    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v2, "Months"

    const/4 v4, 0x6

    .line 161
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "Years"

    .line 162
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V

    .line 158
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 206
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 208
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_9c
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_b0

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 210
    :cond_b0
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_c4

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v2, v5}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 212
    :cond_c4
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_d8

    .line 213
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 214
    :cond_d8
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_ec

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 216
    :cond_ec
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_114

    .line 217
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_108

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v2, v5}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 220
    :cond_108
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 222
    :cond_114
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_a

    .line 223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v3, v1, :cond_158

    .line 224
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iput v2, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 228
    :goto_12a
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secretWebpage2"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    instance-of v3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_a

    .line 230
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v3, v1, :cond_15f

    :goto_153
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 226
    .restart local p1    # "view":Landroid/view/View;
    :cond_158
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_12a

    .end local p1    # "view":Landroid/view/View;
    :cond_15f
    move v1, v2

    .line 230
    goto :goto_153
.end method
