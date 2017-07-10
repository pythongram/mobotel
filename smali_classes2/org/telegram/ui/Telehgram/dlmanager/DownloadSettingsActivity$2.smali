.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;
.super Ljava/lang/Object;
.source "DownloadSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_5e

    .line 101
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 102
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string v19, "download_receiver"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 103
    .local v9, "dr":Z
    if-eqz v9, :cond_2e

    .line 104
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;-><init>()V

    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->cancelAlarm(Landroid/content/Context;)V

    .line 106
    :cond_2e
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 107
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "download_receiver"

    if-nez v9, :cond_58

    const/16 v19, 0x1

    :goto_38
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v19, v0

    if-eqz v19, :cond_57

    .line 110
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v9, :cond_5b

    const/16 v19, 0x1

    :goto_50
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 273
    .end local v9    # "dr":Z
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_57
    :goto_57
    return-void

    .line 107
    .restart local v9    # "dr":Z
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_58
    const/16 v19, 0x0

    goto :goto_38

    .line 110
    .end local p1    # "view":Landroid/view/View;
    :cond_5b
    const/16 v19, 0x0

    goto :goto_50

    .line 112
    .end local v9    # "dr":Z
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_b0

    .line 113
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 114
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string v19, "download_just_today"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 115
    .local v13, "jt":Z
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 116
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "download_just_today"

    if-nez v13, :cond_aa

    const/16 v19, 0x1

    :goto_8a
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v19, v0

    if-eqz v19, :cond_57

    .line 119
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v13, :cond_ad

    const/16 v19, 0x1

    :goto_a2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_57

    .line 116
    .restart local p1    # "view":Landroid/view/View;
    :cond_aa
    const/16 v19, 0x0

    goto :goto_8a

    .line 119
    .end local p1    # "view":Landroid/view/View;
    :cond_ad
    const/16 v19, 0x0

    goto :goto_a2

    .line 121
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "jt":Z
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    if-eqz v19, :cond_57

    .line 125
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 126
    .local v16, "maskValues":[Z
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v5, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 128
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 129
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 132
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_116
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v4, v0, :cond_22e

    .line 133
    const/16 v17, 0x0

    .line 134
    .local v17, "name":Ljava/lang/String;
    if-nez v4, :cond_18d

    .line 135
    const-string v19, "Saturday"

    const v20, 0x7f0707a7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 136
    const-string v19, "dm_saturday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 137
    .local v8, "day":Z
    aput-boolean v8, v16, v4

    .line 164
    .end local v8    # "day":Z
    :cond_133
    :goto_133
    new-instance v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 165
    .local v7, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 166
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    const/16 v19, -0x1

    const/16 v20, 0x30

    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const-string v19, ""

    aget-boolean v20, v16, v4

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v7, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 169
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;[Z)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    .line 138
    .end local v7    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :cond_18d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_1a7

    .line 139
    const-string v19, "Sunday"

    const v20, 0x7f0707e4

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 140
    const-string v19, "dm_sunday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 141
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto :goto_133

    .line 142
    .end local v8    # "day":Z
    :cond_1a7
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_1c2

    .line 143
    const-string v19, "Monday"

    const v20, 0x7f07075d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 144
    const-string v19, "dm_monday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 145
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto/16 :goto_133

    .line 146
    .end local v8    # "day":Z
    :cond_1c2
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v4, v0, :cond_1dd

    .line 147
    const-string v19, "Tuesday"

    const v20, 0x7f0707fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 148
    const-string v19, "dm_tuesday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 149
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto/16 :goto_133

    .line 150
    .end local v8    # "day":Z
    :cond_1dd
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v4, v0, :cond_1f8

    .line 151
    const-string v19, "Wednesday"

    const v20, 0x7f07083b

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 152
    const-string v19, "dm_wednesday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 153
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto/16 :goto_133

    .line 154
    .end local v8    # "day":Z
    :cond_1f8
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v4, v0, :cond_213

    .line 155
    const-string v19, "Thursday"

    const v20, 0x7f0707f7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 156
    const-string v19, "dm_thursday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 157
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto/16 :goto_133

    .line 158
    .end local v8    # "day":Z
    :cond_213
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v4, v0, :cond_133

    .line 159
    const-string v19, "Friday"

    const v20, 0x7f070711

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 160
    const-string v19, "dm_friday"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 161
    .restart local v8    # "day":Z
    aput-boolean v8, v16, v4

    goto/16 :goto_133

    .line 180
    .end local v8    # "day":Z
    .end local v17    # "name":Ljava/lang/String;
    :cond_22e
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v6, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    const-string v19, "Save"

    const v20, 0x7f0704ae

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 183
    const-string v19, "dialogTextBlue2"

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 184
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;[ZI)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const/16 v19, -0x1

    const/16 v20, 0x30

    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v5, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 220
    .end local v4    # "a":I
    .end local v5    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v6    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v16    # "maskValues":[Z
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_30c

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 222
    .local v15, "mCalendar":Ljava/util/Calendar;
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 223
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$3;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;I)V

    const-string v20, "download_shour"

    const/16 v21, 0xb

    .line 236
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string v21, "download_sminute"

    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x0

    .line 223
    invoke-static/range {v19 .. v22}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v20, v0

    .line 236
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "Timepickerdialog"

    invoke-virtual/range {v19 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_57

    .line 237
    .end local v15    # "mCalendar":Ljava/util/Calendar;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_378

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 239
    .restart local v15    # "mCalendar":Ljava/util/Calendar;
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 240
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;I)V

    const-string v20, "download_ehour"

    const/16 v21, 0xb

    .line 253
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string v21, "download_eminute"

    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x0

    .line 240
    invoke-static/range {v19 .. v22}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v20, v0

    .line 253
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "Timepickerdialog_end"

    invoke-virtual/range {v19 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_57

    .line 254
    .end local v15    # "mCalendar":Ljava/util/Calendar;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_3cb

    .line 255
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 256
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string v19, "download_ewifi"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 257
    .local v12, "ew":Z
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 258
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "download_ewifi"

    if-nez v12, :cond_3c5

    const/16 v19, 0x1

    :goto_3a4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v19, v0

    if-eqz v19, :cond_57

    .line 261
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v12, :cond_3c8

    const/16 v19, 0x1

    :goto_3bc
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 258
    .restart local p1    # "view":Landroid/view/View;
    :cond_3c5
    const/16 v19, 0x0

    goto :goto_3a4

    .line 261
    .end local p1    # "view":Landroid/view/View;
    :cond_3c8
    const/16 v19, 0x0

    goto :goto_3bc

    .line 263
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "ew":Z
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_57

    .line 264
    sget-object v19, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v20, "mainconfig"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 265
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string v19, "download_dwifi"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 266
    .local v10, "dw":Z
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 267
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "download_dwifi"

    if-nez v10, :cond_418

    const/16 v19, 0x1

    :goto_3f7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v19, v0

    if-eqz v19, :cond_57

    .line 270
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_41b

    const/16 v19, 0x1

    :goto_40f
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 267
    .restart local p1    # "view":Landroid/view/View;
    :cond_418
    const/16 v19, 0x0

    goto :goto_3f7

    .line 270
    .end local p1    # "view":Landroid/view/View;
    :cond_41b
    const/16 v19, 0x0

    goto :goto_40f
.end method
