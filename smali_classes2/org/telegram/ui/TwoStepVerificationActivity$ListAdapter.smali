.class Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TwoStepVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 912
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 913
    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 914
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1800(Lorg/telegram/ui/TwoStepVerificationActivity;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3100(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    goto :goto_11
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2a

    .line 991
    :cond_28
    const/4 v0, 0x1

    .line 993
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 918
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 919
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x1

    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0200d7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 945
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_176

    .line 986
    :cond_c
    :goto_c
    return-void

    .line 947
    :pswitch_d
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 948
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 949
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 950
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_34

    .line 951
    const-string v3, "ChangePassword"

    const v4, 0x7f070108

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_c

    .line 952
    :cond_34
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_49

    .line 953
    const-string v3, "SetAdditionalPassword"

    const v4, 0x7f0704f1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_c

    .line 954
    :cond_49
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_5e

    .line 955
    const-string v3, "TurnPasswordOff"

    const v4, 0x7f070548

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_c

    .line 956
    :cond_5e
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_7e

    .line 957
    const-string v4, "ChangeRecoveryEmail"

    const v5, 0x7f07010d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I
    invoke-static {v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7c

    :goto_78
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_7c
    move v2, v3

    goto :goto_78

    .line 958
    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_94

    .line 959
    const-string v2, "SetRecoveryEmail"

    const v4, 0x7f0704f9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 960
    :cond_94
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_c

    .line 961
    const-string v2, "windowBackgroundWhiteRedText3"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 962
    const-string v2, "windowBackgroundWhiteRedText3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 963
    const-string v2, "AbortPassword"

    const v4, 0x7f070032

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 967
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_b8
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 968
    .local v0, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_dd

    .line 969
    const-string v2, "SetAdditionalPasswordInfo"

    const v3, 0x7f0704f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 971
    :cond_dd
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_f7

    .line 972
    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 974
    :cond_f7
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_127

    .line 975
    const-string v4, "EmailPasswordConfirmText"

    const v5, 0x7f0701f1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0200d8

    const-string v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 977
    :cond_127
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_148

    .line 978
    const-string v2, "EnabledPasswordText"

    const v3, 0x7f0701f8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 980
    :cond_148
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_c

    .line 981
    const-string v4, "PendingEmailText"

    const v5, 0x7f070437

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 945
    nop

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 930
    packed-switch p2, :pswitch_data_22

    .line 937
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 940
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 932
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 933
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    .line 930
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
