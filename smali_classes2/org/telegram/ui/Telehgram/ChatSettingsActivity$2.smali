.class Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;
.super Ljava/lang/Object;
.source "ChatSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 110
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->isUser:Z
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$000(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Z

    move-result v9

    if-eqz v9, :cond_285

    .line 111
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_63

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "check":Z
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->hideTyping(J)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_typing"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setBooleanValue(Ljava/lang/String;Z)V

    .line 119
    :goto_3a
    instance-of v9, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v9, :cond_43

    .line 120
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 390
    .end local v3    # "check":Z
    :cond_43
    :goto_43
    return-void

    .line 116
    .restart local v3    # "check":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_typing"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setBooleanValue(Ljava/lang/String;Z)V

    .line 117
    const/4 v3, 0x1

    goto :goto_3a

    .line 122
    .end local v3    # "check":Z
    :cond_63
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_be

    .line 123
    const/4 v3, 0x0

    .line 124
    .restart local v3    # "check":Z
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->hideMarkAsRead(J)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_reading"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setBooleanValue(Ljava/lang/String;Z)V

    .line 130
    :goto_95
    instance-of v9, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v9, :cond_43

    .line 131
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_43

    .line 127
    .restart local p1    # "view":Landroid/view/View;
    :cond_9f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_reading"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setBooleanValue(Ljava/lang/String;Z)V

    .line 128
    const/4 v3, 0x1

    goto :goto_95

    .line 133
    .end local v3    # "check":Z
    :cond_be
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-eq p2, v9, :cond_ce

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_231

    .line 134
    :cond_ce
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_43

    .line 137
    const/4 v9, 0x6

    new-array v7, v9, [Z

    .line 138
    .local v7, "maskValues":[Z
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v6, 0x0

    .line 141
    .local v6, "mask":I
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_15d

    .line 142
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getMobileDataDownloadMask(J)I

    move-result v6

    .line 147
    :cond_f7
    :goto_f7
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 148
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 149
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_10f
    const/4 v9, 0x6

    if-ge v0, v9, :cond_1e3

    .line 152
    const/4 v8, 0x0

    .line 153
    .local v8, "name":Ljava/lang/String;
    if-nez v0, :cond_172

    .line 154
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_170

    const/4 v9, 0x1

    :goto_11a
    aput-boolean v9, v7, v0

    .line 155
    const-string v9, "AttachPhoto"

    const v10, 0x7f0700c2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 172
    :cond_125
    :goto_125
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v4, v9, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 173
    .local v4, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 174
    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const/4 v9, -0x1

    const/16 v10, 0x30

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const-string v9, ""

    aget-boolean v10, v7, v0

    const/4 v11, 0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    new-instance v9, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$1;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$1;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;[Z)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    .line 143
    .end local v0    # "a":I
    .end local v4    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v8    # "name":Ljava/lang/String;
    :cond_15d
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_f7

    .line 144
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getWifiDownloadMask(J)I

    move-result v6

    goto :goto_f7

    .line 154
    .restart local v0    # "a":I
    .restart local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_170
    const/4 v9, 0x0

    goto :goto_11a

    .line 156
    :cond_172
    const/4 v9, 0x1

    if-ne v0, v9, :cond_188

    .line 157
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_186

    const/4 v9, 0x1

    :goto_17a
    aput-boolean v9, v7, v0

    .line 158
    const-string v9, "AttachAudio"

    const v10, 0x7f0700ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_125

    .line 157
    :cond_186
    const/4 v9, 0x0

    goto :goto_17a

    .line 159
    :cond_188
    const/4 v9, 0x2

    if-ne v0, v9, :cond_19e

    .line 160
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_19c

    const/4 v9, 0x1

    :goto_190
    aput-boolean v9, v7, v0

    .line 161
    const-string v9, "AttachVideo"

    const v10, 0x7f0700c4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_125

    .line 160
    :cond_19c
    const/4 v9, 0x0

    goto :goto_190

    .line 162
    :cond_19e
    const/4 v9, 0x3

    if-ne v0, v9, :cond_1b5

    .line 163
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_1b3

    const/4 v9, 0x1

    :goto_1a6
    aput-boolean v9, v7, v0

    .line 164
    const-string v9, "AttachDocument"

    const v10, 0x7f0700bd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_125

    .line 163
    :cond_1b3
    const/4 v9, 0x0

    goto :goto_1a6

    .line 165
    :cond_1b5
    const/4 v9, 0x4

    if-ne v0, v9, :cond_1cc

    .line 166
    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_1ca

    const/4 v9, 0x1

    :goto_1bd
    aput-boolean v9, v7, v0

    .line 167
    const-string v9, "AttachMusic"

    const v10, 0x7f0700c1

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_125

    .line 166
    :cond_1ca
    const/4 v9, 0x0

    goto :goto_1bd

    .line 168
    :cond_1cc
    const/4 v9, 0x5

    if-ne v0, v9, :cond_125

    .line 169
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1e1

    const/4 v9, 0x1

    :goto_1d4
    aput-boolean v9, v7, v0

    .line 170
    const-string v9, "AttachGif"

    const v10, 0x7f0700bf

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_125

    .line 169
    :cond_1e1
    const/4 v9, 0x0

    goto :goto_1d4

    .line 187
    .end local v8    # "name":Ljava/lang/String;
    :cond_1e3
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v2, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const-string v9, "Save"

    const v10, 0x7f0704ae

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 190
    const-string v9, "dialogTextBlue2"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 191
    new-instance v9, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$2;

    invoke-direct {v9, p0, v7, p2}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$2;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;[ZI)V

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const/4 v9, -0x1

    const/16 v10, 0x30

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 231
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_43

    .line 232
    .end local v0    # "a":I
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v2    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v6    # "mask":I
    .end local v7    # "maskValues":[Z
    :cond_231
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_43

    .line 233
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v9, "AppName"

    const v10, 0x7f070092

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 235
    const-string v9, "AreYouSureToContinue"

    const v10, 0x7f070654

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 236
    const-string v9, "OK"

    const v10, 0x7f0703d4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$3;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$3;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;)V

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 256
    const-string v9, "Cancel"

    const v10, 0x7f0700fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 257
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_43

    .line 260
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_285
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-eq p2, v9, :cond_295

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_3f8

    .line 261
    :cond_295
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_43

    .line 264
    const/4 v9, 0x6

    new-array v7, v9, [Z

    .line 265
    .restart local v7    # "maskValues":[Z
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v6, 0x0

    .line 268
    .restart local v6    # "mask":I
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_324

    .line 269
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getMobileDataDownloadMask(J)I

    move-result v6

    .line 274
    :cond_2be
    :goto_2be
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 275
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 276
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .restart local v5    # "linearLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2d6
    const/4 v9, 0x6

    if-ge v0, v9, :cond_3aa

    .line 279
    const/4 v8, 0x0

    .line 280
    .restart local v8    # "name":Ljava/lang/String;
    if-nez v0, :cond_339

    .line 281
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_337

    const/4 v9, 0x1

    :goto_2e1
    aput-boolean v9, v7, v0

    .line 282
    const-string v9, "AttachPhoto"

    const v10, 0x7f0700c2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 299
    :cond_2ec
    :goto_2ec
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v4, v9, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 300
    .restart local v4    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 301
    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    const/4 v9, -0x1

    const/16 v10, 0x30

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const-string v9, ""

    aget-boolean v10, v7, v0

    const/4 v11, 0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 304
    new-instance v9, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$4;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$4;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;[Z)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d6

    .line 270
    .end local v0    # "a":I
    .end local v4    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v8    # "name":Ljava/lang/String;
    :cond_324
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_2be

    .line 271
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getWifiDownloadMask(J)I

    move-result v6

    goto :goto_2be

    .line 281
    .restart local v0    # "a":I
    .restart local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_337
    const/4 v9, 0x0

    goto :goto_2e1

    .line 283
    :cond_339
    const/4 v9, 0x1

    if-ne v0, v9, :cond_34f

    .line 284
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_34d

    const/4 v9, 0x1

    :goto_341
    aput-boolean v9, v7, v0

    .line 285
    const-string v9, "AttachAudio"

    const v10, 0x7f0700ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2ec

    .line 284
    :cond_34d
    const/4 v9, 0x0

    goto :goto_341

    .line 286
    :cond_34f
    const/4 v9, 0x2

    if-ne v0, v9, :cond_365

    .line 287
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_363

    const/4 v9, 0x1

    :goto_357
    aput-boolean v9, v7, v0

    .line 288
    const-string v9, "AttachVideo"

    const v10, 0x7f0700c4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2ec

    .line 287
    :cond_363
    const/4 v9, 0x0

    goto :goto_357

    .line 289
    :cond_365
    const/4 v9, 0x3

    if-ne v0, v9, :cond_37c

    .line 290
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_37a

    const/4 v9, 0x1

    :goto_36d
    aput-boolean v9, v7, v0

    .line 291
    const-string v9, "AttachDocument"

    const v10, 0x7f0700bd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2ec

    .line 290
    :cond_37a
    const/4 v9, 0x0

    goto :goto_36d

    .line 292
    :cond_37c
    const/4 v9, 0x4

    if-ne v0, v9, :cond_393

    .line 293
    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_391

    const/4 v9, 0x1

    :goto_384
    aput-boolean v9, v7, v0

    .line 294
    const-string v9, "AttachMusic"

    const v10, 0x7f0700c1

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2ec

    .line 293
    :cond_391
    const/4 v9, 0x0

    goto :goto_384

    .line 295
    :cond_393
    const/4 v9, 0x5

    if-ne v0, v9, :cond_2ec

    .line 296
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_3a8

    const/4 v9, 0x1

    :goto_39b
    aput-boolean v9, v7, v0

    .line 297
    const-string v9, "AttachGif"

    const v10, 0x7f0700bf

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2ec

    .line 296
    :cond_3a8
    const/4 v9, 0x0

    goto :goto_39b

    .line 314
    .end local v8    # "name":Ljava/lang/String;
    :cond_3aa
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 315
    .restart local v2    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    const-string v9, "Save"

    const v10, 0x7f0704ae

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 317
    const-string v9, "dialogTextBlue2"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 318
    new-instance v9, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;

    invoke-direct {v9, p0, v7, p2}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;[ZI)V

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const/4 v9, -0x1

    const/16 v10, 0x30

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 358
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_43

    .line 359
    .end local v0    # "a":I
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v2    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v6    # "mask":I
    .end local v7    # "maskValues":[Z
    :cond_3f8
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v9

    if-ne p2, v9, :cond_43

    .line 360
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v9, "AppName"

    const v10, 0x7f070092

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 362
    const-string v9, "AreYouSureToContinue"

    const v10, 0x7f070654

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 363
    const-string v9, "OK"

    const v10, 0x7f0703d4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;)V

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 386
    const-string v9, "Cancel"

    const v10, 0x7f0700fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 387
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_43
.end method
