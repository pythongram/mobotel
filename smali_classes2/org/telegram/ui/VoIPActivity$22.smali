.class Lorg/telegram/ui/VoIPActivity$22;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 1062
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    iput p2, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1065
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3100(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v2

    .line 1066
    .local v2, "wasFirstStateChange":Z
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3100(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1067
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v10, :cond_bc

    move v3, v4

    :goto_1c
    # setter for: Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z
    invoke-static {v6, v3}, Lorg/telegram/ui/VoIPActivity;->access$3202(Lorg/telegram/ui/VoIPActivity;Z)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 1068
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1071
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1072
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    new-instance v3, Lorg/telegram/ui/VoIPActivity$22$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPActivity$22$1;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0x1f4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1080
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x200000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1087
    :goto_64
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v9, :cond_71

    .line 1088
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    :cond_71
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # setter for: Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z
    invoke-static {v3, v5}, Lorg/telegram/ui/VoIPActivity;->access$3102(Lorg/telegram/ui/VoIPActivity;Z)Z

    .line 1092
    :cond_76
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3200(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v10, :cond_9e

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_9e

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_9e

    .line 1093
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # setter for: Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z
    invoke-static {v3, v5}, Lorg/telegram/ui/VoIPActivity;->access$3202(Lorg/telegram/ui/VoIPActivity;Z)Z

    .line 1094
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1000(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 1095
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->callAccepted()V
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1100(Lorg/telegram/ui/VoIPActivity;)V

    .line 1098
    :cond_9e
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v10, :cond_e7

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "VoipIncoming"

    const v6, 0x7f070588

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1100
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1179
    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    move v3, v5

    .line 1067
    goto/16 :goto_1c

    .line 1082
    :cond_bf
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1083
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x200000

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_64

    .line 1101
    :cond_e7
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v4, :cond_f0

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_ff

    .line 1102
    :cond_f0
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipConnecting"

    const v6, 0x7f07057f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_bb

    .line 1103
    :cond_ff
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_113

    .line 1104
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipExchangingKeys"

    const v6, 0x7f070582

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_bb

    .line 1105
    :cond_113
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v8, :cond_126

    .line 1106
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipWaiting"

    const v6, 0x7f07059b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_bb

    .line 1107
    :cond_126
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0xb

    if-ne v3, v6, :cond_13b

    .line 1108
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipRinging"

    const v6, 0x7f070597

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_bb

    .line 1109
    :cond_13b
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_151

    .line 1110
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipRequesting"

    const v6, 0x7f070596

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto/16 :goto_bb

    .line 1111
    :cond_151
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_166

    .line 1112
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "VoipHangingUp"

    const v6, 0x7f070586

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto/16 :goto_bb

    .line 1113
    :cond_166
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_18b

    .line 1114
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "VoipCallEnded"

    const v6, 0x7f07057e

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1115
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/VoIPActivity$22$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$22$2;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_bb

    .line 1121
    :cond_18b
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0xc

    if-ne v3, v6, :cond_1a6

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "VoipBusy"

    const v6, 0x7f07057d

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1130
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->showRetry()V
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3600(Lorg/telegram/ui/VoIPActivity;)V

    goto/16 :goto_bb

    .line 1131
    :cond_1a6
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v9, :cond_242

    .line 1132
    if-nez v2, :cond_1ee

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v6, "mainconfig"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/VoIPActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "call_emoji_tooltip_count"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1134
    .local v0, "count":I
    if-ge v0, v9, :cond_1ee

    .line 1135
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$1600(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 1136
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-instance v6, Lorg/telegram/ui/VoIPActivity$22$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$22$3;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    # setter for: Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;
    invoke-static {v4, v6}, Lorg/telegram/ui/VoIPActivity;->access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "call_emoji_tooltip_count"

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1146
    .end local v0    # "count":I
    :cond_1ee
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "0:00"

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1147
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->startUpdatingCallDuration()V
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3700(Lorg/telegram/ui/VoIPActivity;)V

    .line 1148
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # invokes: Lorg/telegram/ui/VoIPActivity;->updateKeyView()V
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3800(Lorg/telegram/ui/VoIPActivity;)V

    .line 1149
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_bb

    .line 1150
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1151
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1152
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_bb

    .line 1154
    :cond_242
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_bb

    .line 1155
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v6, "VoipFailed"

    const v7, 0x7f070583

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
    invoke-static {v3, v6, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1156
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-eqz v3, :cond_291

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()I

    move-result v1

    .line 1157
    .local v1, "lastError":I
    :goto_263
    if-ne v1, v4, :cond_293

    .line 1158
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v6, "VoipPeerIncompatible"

    const v7, 0x7f070593

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1159
    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1158
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_bb

    .end local v1    # "lastError":I
    :cond_291
    move v1, v5

    .line 1156
    goto :goto_263

    .line 1160
    .restart local v1    # "lastError":I
    :cond_293
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2c2

    .line 1161
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v6, "VoipPeerOutdated"

    const v7, 0x7f070594

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1162
    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1161
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_bb

    .line 1163
    :cond_2c2
    const/4 v3, -0x2

    if-ne v1, v3, :cond_2f1

    .line 1164
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v6, "CallNotAvailable"

    const v7, 0x7f0700f7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1165
    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1164
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    # invokes: Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_bb

    .line 1166
    :cond_2f1
    if-ne v1, v9, :cond_2fc

    .line 1167
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v4, "Error initializing audio hardware"

    # invokes: Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_bb

    .line 1168
    :cond_2fc
    const/4 v3, -0x3

    if-ne v1, v3, :cond_306

    .line 1169
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto/16 :goto_bb

    .line 1171
    :cond_306
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/VoIPActivity$22$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$22$4;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_bb
.end method
