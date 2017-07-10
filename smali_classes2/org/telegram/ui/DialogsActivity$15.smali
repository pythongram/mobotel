.class Lorg/telegram/ui/DialogsActivity$15;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createTabsDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 727
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 28
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 731
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 732
    .local v20, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 734
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "hideTabs"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 736
    .local v12, "hide":Z
    const-string v3, "hideUsers"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 737
    .local v18, "hideUsers":Z
    const-string v3, "hideGroups"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 738
    .local v16, "hideGroups":Z
    const-string v3, "hideSGroups"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 739
    .local v17, "hideSGroups":Z
    const-string v3, "hideChannels"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 740
    .local v14, "hideChannels":Z
    const-string v3, "hideBots"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 741
    .local v13, "hideBots":Z
    const-string v3, "hideFavs"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 743
    .local v15, "hideFavs":Z
    if-nez p2, :cond_f5

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 745
    .local v22, "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideUsers"

    if-nez v18, :cond_dc

    const/4 v3, 0x1

    :goto_61
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    if-nez v18, :cond_de

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_95

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 752
    :cond_95
    const/16 v18, 0x1

    .line 830
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_97
    :goto_97
    if-eqz v18, :cond_bd

    if-eqz v16, :cond_bd

    if-eqz v17, :cond_bd

    if-eqz v14, :cond_bd

    if-eqz v13, :cond_bd

    if-eqz v15, :cond_bd

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->hideTabs:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$1102(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 832
    const-string v3, "hideTabs"

    const/4 v4, 0x1

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x1

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 835
    :cond_bd
    if-eqz p3, :cond_db

    if-eqz v12, :cond_db

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->hideTabs:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$1102(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 837
    const-string v3, "hideTabs"

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 840
    :cond_db
    return-void

    .line 745
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_dc
    const/4 v3, 0x0

    goto :goto_61

    .line 754
    :cond_de
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_97

    .line 756
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_f5
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_163

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 758
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideGroups"

    if-nez v16, :cond_145

    const/4 v3, 0x1

    :goto_10d
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 759
    if-nez v16, :cond_147

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_141

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 765
    :cond_141
    const/16 v16, 0x1

    goto/16 :goto_97

    .line 758
    :cond_145
    const/4 v3, 0x0

    goto :goto_10d

    .line 767
    :cond_147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v18, :cond_161

    const/4 v3, 0x1

    :goto_152
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    :cond_161
    const/4 v3, 0x2

    goto :goto_152

    .line 769
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_163
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_1d8

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 771
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideSGroups"

    if-nez v17, :cond_1b3

    const/4 v3, 0x1

    :goto_17b
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 772
    if-nez v17, :cond_1b5

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1af

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x4

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 778
    :cond_1af
    const/16 v17, 0x1

    goto/16 :goto_97

    .line 771
    :cond_1b3
    const/4 v3, 0x0

    goto :goto_17b

    .line 780
    :cond_1b5
    const/16 v21, 0x3

    .line 781
    .local v21, "pos":I
    if-eqz v18, :cond_1bb

    add-int/lit8 v21, v21, -0x1

    .line 782
    :cond_1bb
    if-eqz v16, :cond_1bf

    add-int/lit8 v21, v21, -0x1

    .line 783
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 785
    .end local v21    # "pos":I
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_1d8
    const/4 v3, 0x3

    move/from16 v0, p2

    if-ne v0, v3, :cond_256

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 787
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideChannels"

    if-nez v14, :cond_227

    const/4 v3, 0x1

    :goto_1f0
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 788
    if-nez v14, :cond_229

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_224

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 794
    :cond_224
    const/4 v14, 0x1

    goto/16 :goto_97

    .line 787
    :cond_227
    const/4 v3, 0x0

    goto :goto_1f0

    .line 796
    :cond_229
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .line 797
    .local v19, "place":I
    if-nez v15, :cond_239

    add-int/lit8 v19, v19, -0x1

    .line 798
    :cond_239
    if-nez v13, :cond_23d

    add-int/lit8 v19, v19, -0x1

    .line 799
    :cond_23d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 801
    .end local v19    # "place":I
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_256
    const/4 v3, 0x4

    move/from16 v0, p2

    if-ne v0, v3, :cond_2d8

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 803
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideBots"

    if-nez v13, :cond_2a5

    const/4 v3, 0x1

    :goto_26e
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 804
    if-nez v13, :cond_2a7

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2a2

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 810
    :cond_2a2
    const/4 v13, 0x1

    goto/16 :goto_97

    .line 803
    :cond_2a5
    const/4 v3, 0x0

    goto :goto_26e

    .line 812
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .line 813
    .restart local v19    # "place":I
    if-nez v15, :cond_2b7

    add-int/lit8 v19, v19, -0x1

    .line 814
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v23

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 816
    .end local v19    # "place":I
    .end local v22    # "rl":Landroid/widget/RelativeLayout;
    :cond_2d8
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_97

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 818
    .restart local v22    # "rl":Landroid/widget/RelativeLayout;
    const-string v4, "hideFavs"

    if-nez v15, :cond_328

    const/4 v3, 0x1

    :goto_2f0
    invoke-interface {v11, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 819
    if-nez v15, :cond_32a

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_325

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 825
    :cond_325
    const/4 v15, 0x1

    goto/16 :goto_97

    .line 818
    :cond_328
    const/4 v3, 0x0

    goto :goto_2f0

    .line 827
    :cond_32a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97
.end method
