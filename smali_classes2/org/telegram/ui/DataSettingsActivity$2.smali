.class Lorg/telegram/ui/DataSettingsActivity$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DataSettingsActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_1c3

    .line 127
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 275
    :cond_2e
    :goto_2e
    return-void

    .line 130
    :cond_2f
    const/4 v3, 0x6

    new-array v0, v3, [Z

    move-object/from16 v16, v0

    .line 131
    .local v16, "maskValues":[Z
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v10, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v15, 0x0

    .line 134
    .local v15, "mask":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_ce

    .line 135
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 142
    :cond_54
    :goto_54
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 143
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 144
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_6e
    const/4 v3, 0x6

    if-ge v9, v3, :cond_16b

    .line 147
    const/16 v17, 0x0

    .line 148
    .local v17, "name":Ljava/lang/String;
    if-nez v9, :cond_f8

    .line 149
    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_f6

    const/4 v3, 0x1

    :goto_7a
    aput-boolean v3, v16, v9

    .line 150
    const-string v3, "LocalPhotoCache"

    const v4, 0x7f0702f4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 167
    :cond_85
    :goto_85
    new-instance v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v12, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 168
    .local v12, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 169
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const-string v3, ""

    aget-boolean v4, v16, v9

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    const-string v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 173
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/DataSettingsActivity$2$1;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[Z)V

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 136
    .end local v9    # "a":I
    .end local v12    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v17    # "name":Ljava/lang/String;
    :cond_ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_e2

    .line 137
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto/16 :goto_54

    .line 138
    :cond_e2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_54

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto/16 :goto_54

    .line 149
    .restart local v9    # "a":I
    .restart local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_f6
    const/4 v3, 0x0

    goto :goto_7a

    .line 151
    :cond_f8
    const/4 v3, 0x1

    if-ne v9, v3, :cond_10f

    .line 152
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_10d

    const/4 v3, 0x1

    :goto_100
    aput-boolean v3, v16, v9

    .line 153
    const-string v3, "LocalAudioCache"

    const v4, 0x7f0702ec

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_85

    .line 152
    :cond_10d
    const/4 v3, 0x0

    goto :goto_100

    .line 154
    :cond_10f
    const/4 v3, 0x2

    if-ne v9, v3, :cond_126

    .line 155
    and-int/lit8 v3, v15, 0x4

    if-eqz v3, :cond_124

    const/4 v3, 0x1

    :goto_117
    aput-boolean v3, v16, v9

    .line 156
    const-string v3, "LocalVideoCache"

    const v4, 0x7f0702f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_85

    .line 155
    :cond_124
    const/4 v3, 0x0

    goto :goto_117

    .line 157
    :cond_126
    const/4 v3, 0x3

    if-ne v9, v3, :cond_13d

    .line 158
    and-int/lit8 v3, v15, 0x8

    if-eqz v3, :cond_13b

    const/4 v3, 0x1

    :goto_12e
    aput-boolean v3, v16, v9

    .line 159
    const-string v3, "FilesDataUsage"

    const v4, 0x7f070219

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_85

    .line 158
    :cond_13b
    const/4 v3, 0x0

    goto :goto_12e

    .line 160
    :cond_13d
    const/4 v3, 0x4

    if-ne v9, v3, :cond_154

    .line 161
    and-int/lit8 v3, v15, 0x10

    if-eqz v3, :cond_152

    const/4 v3, 0x1

    :goto_145
    aput-boolean v3, v16, v9

    .line 162
    const-string v3, "AttachMusic"

    const v4, 0x7f0700c1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_85

    .line 161
    :cond_152
    const/4 v3, 0x0

    goto :goto_145

    .line 163
    :cond_154
    const/4 v3, 0x5

    if-ne v9, v3, :cond_85

    .line 164
    and-int/lit8 v3, v15, 0x20

    if-eqz v3, :cond_169

    const/4 v3, 0x1

    :goto_15c
    aput-boolean v3, v16, v9

    .line 165
    const-string v3, "LocalGifCache"

    const v4, 0x7f0702f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_85

    .line 164
    :cond_169
    const/4 v3, 0x0

    goto :goto_15c

    .line 183
    .end local v17    # "name":Ljava/lang/String;
    :cond_16b
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 184
    .local v11, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const-string v3, "Save"

    const v4, 0x7f0704ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 186
    const-string v3, "dialogTextBlue2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 187
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$2;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v10, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2e

    .line 235
    .end local v9    # "a":I
    .end local v10    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v11    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v15    # "mask":I
    .end local v16    # "maskValues":[Z
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_1dd

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v4}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 237
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_252

    .line 238
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 239
    .local v18, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UseLessDataNever"

    const v8, 0x7f07055d

    .line 240
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "UseLessDataOnMobile"

    const v8, 0x7f07055e

    .line 241
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "UseLessDataAlways"

    const v8, 0x7f07055c

    .line 242
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "VoipUseLessData"

    const v7, 0x7f07059a

    .line 243
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VoipDataSaving"

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Lorg/telegram/ui/DataSettingsActivity$2$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$3;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;Landroid/content/SharedPreferences;I)V

    .line 239
    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v13

    .line 266
    .local v13, "dlg":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/DataSettingsActivity;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 267
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2e

    .line 268
    .end local v13    # "dlg":Landroid/app/Dialog;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_252
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileUsageRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_26d

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 270
    :cond_26d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingUsageRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_288

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 272
    :cond_288
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiUsageRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_2e

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e
.end method
