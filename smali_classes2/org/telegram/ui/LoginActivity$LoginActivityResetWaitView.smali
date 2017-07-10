.class public Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityResetWaitView"
.end annotation


# instance fields
.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private phoneCode:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private requestPhone:Ljava/lang/String;

.field private resetAccountButton:Landroid/widget/TextView;

.field private resetAccountText:Landroid/widget/TextView;

.field private resetAccountTime:Landroid/widget/TextView;

.field private startTime:I

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private timeRunnable:Ljava/lang/Runnable;

.field private waitTime:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .registers 14
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x41600000    # 14.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v0, -0x2

    const/4 v3, 0x0

    .line 2282
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 2283
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 2285
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->setOrientation(I)V

    .line 2287
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    .line 2288
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2289
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2290
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_14f

    move v1, v7

    :goto_2e
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2291
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2292
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_152

    move v1, v7

    :goto_46
    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2294
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    .line 2295
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_155

    move v1, v7

    :goto_5b
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2296
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2297
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    const-string v2, "ResetAccountStatus"

    const v4, 0x7f070492

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2298
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2299
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2300
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_158

    move v1, v7

    :goto_94
    or-int/lit8 v2, v1, 0x30

    const/16 v4, 0x18

    move v1, v0

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2302
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    .line 2303
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_15b

    move v1, v7

    :goto_b0
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2304
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2305
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2306
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2307
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_15e

    move v1, v7

    :goto_db
    or-int/lit8 v2, v1, 0x30

    const/4 v4, 0x2

    move v1, v0

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2309
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    .line 2310
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_161

    move v1, v7

    :goto_f6
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2311
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v2, "ResetAccountButton"

    const v4, 0x7f07048f

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2312
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2313
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2314
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2315
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2316
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_163

    :goto_137
    or-int/lit8 v2, v7, 0x30

    const/4 v4, 0x7

    move v1, v0

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2362
    return-void

    :cond_14f
    move v1, v8

    .line 2290
    goto/16 :goto_2e

    :cond_152
    move v1, v8

    .line 2292
    goto/16 :goto_46

    :cond_155
    move v1, v8

    .line 2295
    goto/16 :goto_5b

    :cond_158
    move v1, v8

    .line 2300
    goto/16 :goto_94

    :cond_15b
    move v1, v8

    .line 2303
    goto/16 :goto_b0

    :cond_15e
    move v1, v8

    .line 2307
    goto/16 :goto_db

    :cond_161
    move v1, v8

    .line 2310
    goto :goto_f6

    :cond_163
    move v7, v8

    .line 2316
    goto :goto_137
.end method

.method static synthetic access$5900(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->startTime:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->waitTime:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->updateTimeText()V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateTimeText()V
    .registers 11

    .prologue
    const v9, 0x15180

    .line 2370
    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->waitTime:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->startTime:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2371
    .local v4, "timeLeft":I
    div-int v0, v4, v9

    .line 2372
    .local v0, "days":I
    mul-int v5, v0, v9

    sub-int v5, v4, v5

    div-int/lit16 v1, v5, 0xe10

    .line 2373
    .local v1, "hours":I
    mul-int v5, v0, v9

    sub-int v5, v4, v5

    mul-int/lit16 v6, v1, 0xe10

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x3c

    .line 2374
    .local v2, "minutes":I
    rem-int/lit8 v3, v4, 0x3c

    .line 2375
    .local v3, "seconds":I
    if-eqz v0, :cond_7c

    .line 2376
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DaysBold"

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "HoursBold"

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MinutesBold"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    :goto_67
    if-lez v4, :cond_b9

    .line 2381
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteGrayText6"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2382
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteGrayText6"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2387
    :goto_7b
    return-void

    .line 2378
    :cond_7c
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HoursBold"

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MinutesBold"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SecondsBold"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 2384
    :cond_b9
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteRedText6"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2385
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteRedText6"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7b
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2366
    const-string v0, "ResetAccount"

    const v1, 0x7f07048e

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .registers 2

    .prologue
    .line 2417
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2423
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;

    .line 2424
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    .line 2425
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2436
    const-string v0, "resetview_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    .line 2437
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 2438
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->setParams(Landroid/os/Bundle;Z)V

    .line 2440
    :cond_12
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2429
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 2430
    const-string v0, "resetview_params"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2432
    :cond_b
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 11
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 2391
    if-nez p1, :cond_3

    .line 2413
    :goto_2
    return-void

    .line 2394
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->currentParams:Landroid/os/Bundle;

    .line 2395
    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->requestPhone:Ljava/lang/String;

    .line 2396
    const-string v0, "phoneHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneHash:Ljava/lang/String;

    .line 2397
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneCode:Ljava/lang/String;

    .line 2398
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->startTime:I

    .line 2399
    const-string v0, "waitTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->waitTime:I

    .line 2400
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "ResetAccountInfo"

    const v2, 0x7f070491

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2401
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->updateTimeText()V

    .line 2402
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;

    .line 2412
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2
.end method
