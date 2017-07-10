.class public Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private catchedPhone:Ljava/lang/String;

.field private codeField:Landroid/widget/EditText;

.field private volatile codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private emailPhone:Ljava/lang/String;

.field private ignoreOnTextChange:Z

.field private isRestored:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private nextPressed:Z

.field private nextType:I

.field private openTime:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private problemText:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private volatile time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private waitingForEvent:Z

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .registers 16
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1227
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 1228
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 1211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    .line 1212
    const v0, 0xea60

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 1213
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 1219
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 1222
    const-string v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1230
    iput p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    .line 1231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setOrientation(I)V

    .line 1233
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1236
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_294

    const/4 v0, 0x5

    :goto_44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1239
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2ca

    .line 1240
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1243
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f02020e

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1244
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_29a

    .line 1245
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x13

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_297

    const/4 v2, 0x5

    :goto_8b
    const/high16 v3, 0x42a40000    # 82.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    :goto_97
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2c7

    const/4 v0, 0x5

    :goto_9e
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :goto_a5
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "Code"

    const v2, 0x7f070181

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1267
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1299
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_142

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1305
    :cond_142
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1309
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2de

    const/4 v0, 0x5

    :goto_171
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1310
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2e1

    const/4 v2, 0x5

    :goto_17d
    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a5

    .line 1313
    new-instance v0, Lorg/telegram/ui/LoginActivity$ProgressView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/LoginActivity$ProgressView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    .line 1314
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    :cond_1a5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "DidNotGetTheCode"

    const v2, 0x7f0701e2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2e4

    const/4 v0, 0x5

    :goto_1c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1324
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2e7

    const/4 v2, 0x5

    :goto_201
    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1351
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1352
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2ea

    const/4 v0, 0x5

    :goto_221
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1353
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2ed

    const/4 v0, 0x5

    :goto_22d
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1356
    .local v10, "wrongNumber":Landroid/widget/TextView;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2f0

    const/4 v0, 0x5

    :goto_23e
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1357
    const-string v0, "windowBackgroundWhiteBlueText4"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1358
    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1359
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1360
    const/4 v0, 0x0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1361
    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2f3

    const/4 v2, 0x5

    :goto_271
    or-int/lit8 v2, v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    const-string v0, "WrongNumber"

    const v1, 0x7f0705b3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1379
    return-void

    .line 1236
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v10    # "wrongNumber":Landroid/widget/TextView;
    :cond_294
    const/4 v0, 0x3

    goto/16 :goto_44

    .line 1246
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_297
    const/4 v2, 0x3

    goto/16 :goto_8b

    .line 1248
    :cond_29a
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2c5

    const/4 v2, 0x5

    :goto_2a4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a40000    # 82.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 1248
    :cond_2c5
    const/4 v2, 0x3

    goto :goto_2a4

    .line 1251
    :cond_2c7
    const/4 v0, 0x3

    goto/16 :goto_9e

    .line 1253
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_2ca
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2dc

    const/4 v0, 0x5

    :goto_2d3
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a5

    :cond_2dc
    const/4 v0, 0x3

    goto :goto_2d3

    .line 1309
    :cond_2de
    const/4 v0, 0x3

    goto/16 :goto_171

    .line 1310
    :cond_2e1
    const/4 v2, 0x3

    goto/16 :goto_17d

    .line 1319
    :cond_2e4
    const/4 v0, 0x3

    goto/16 :goto_1c1

    .line 1324
    :cond_2e7
    const/4 v2, 0x3

    goto/16 :goto_201

    .line 1352
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2ea
    const/4 v0, 0x3

    goto/16 :goto_221

    .line 1353
    :cond_2ed
    const/4 v0, 0x3

    goto/16 :goto_22d

    .line 1356
    .restart local v10    # "wrongNumber":Landroid/widget/TextView;
    :cond_2f0
    const/4 v0, 0x3

    goto/16 :goto_23e

    .line 1361
    :cond_2f3
    const/4 v2, 0x3

    goto/16 :goto_271
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1193
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 1193
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 1193
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 1193
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 1193
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeout:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCodeTimer()V
    .registers 7

    .prologue
    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 1559
    :goto_4
    return-void

    .line 1538
    :cond_5
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 1539
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private createTimer()V
    .registers 7

    .prologue
    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 1647
    :goto_4
    return-void

    .line 1578
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private destroyCodeTimer()V
    .registers 4

    .prologue
    .line 1563
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 1564
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 1565
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1566
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1568
    :cond_f
    monitor-exit v2

    .line 1572
    :goto_10
    return-void

    .line 1568
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 1569
    :catch_14
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private destroyTimer()V
    .registers 4

    .prologue
    .line 1651
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 1652
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 1653
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1654
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1656
    :cond_f
    monitor-exit v2

    .line 1660
    :goto_10
    return-void

    .line 1656
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 1657
    :catch_14
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private resendCode()V
    .registers 6

    .prologue
    .line 1382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1383
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1388
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1390
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1391
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1392
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1393
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1424
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1837
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-nez v1, :cond_b

    .line 1860
    :cond_a
    :goto_a
    return-void

    .line 1840
    :cond_b
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    if-ne p1, v1, :cond_31

    .line 1841
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1842
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1844
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a

    .line 1845
    :cond_31
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, v1, :cond_a

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1850
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1851
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 1852
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 1853
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeLoginPhoneCall(Ljava/lang/String;Z)V

    .line 1855
    :cond_64
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1856
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1858
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1428
    const-string v0, "YourCode"

    const v1, 0x7f0705c2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1798
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1799
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1800
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1801
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1802
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1803
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1808
    :cond_1b
    :goto_1b
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1809
    return-void

    .line 1804
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 1805
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1806
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1b
.end method

.method public onDestroyActivity()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1813
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 1814
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1815
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1816
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1821
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1822
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1823
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1824
    return-void

    .line 1817
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 1818
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1819
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_15
.end method

.method public onNextPressed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1664
    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v2, :cond_6

    .line 1794
    :goto_5
    return-void

    .line 1667
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1668
    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 1669
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1670
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1675
    :cond_1a
    :goto_1a
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1676
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 1678
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 1679
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 1680
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 1681
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1682
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1683
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_5

    .line 1671
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;
    :cond_4c
    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 1672
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1673
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1a
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 1828
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_1c

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1833
    :cond_1c
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsview_params_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1885
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v4, :cond_25

    .line 1886
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setParams(Landroid/os/Bundle;Z)V

    .line 1888
    :cond_25
    const-string v4, "catchedPhone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    .local v0, "catched":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 1890
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 1892
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsview_code_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1893
    .local v1, "code":Ljava/lang/String;
    if-eqz v1, :cond_4f

    .line 1894
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    :cond_4f
    const-string v4, "time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1897
    .local v2, "t":I
    if-eqz v2, :cond_59

    .line 1898
    iput v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 1900
    :cond_59
    const-string v4, "open"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1901
    .local v3, "t2":I
    if-eqz v3, :cond_63

    .line 1902
    iput v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    .line 1904
    :cond_63
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1864
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1865
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_28

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsview_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 1869
    const-string v1, "catchedPhone"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_51

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsview_params_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1874
    :cond_51
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-eqz v1, :cond_5c

    .line 1875
    const-string v1, "time"

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1877
    :cond_5c
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    if-eqz v1, :cond_67

    .line 1878
    const-string v1, "open"

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1880
    :cond_67
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 13
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 1433
    if-nez p1, :cond_3

    .line 1532
    :cond_2
    :goto_2
    return-void

    .line 1436
    :cond_3
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isRestored:Z

    .line 1437
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1439
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ea

    .line 1440
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1441
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1447
    :cond_21
    :goto_21
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1448
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 1449
    const-string v4, "ephone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    .line 1450
    const-string v4, "phoneFormated"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 1451
    const-string v4, "phoneHash"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 1452
    const-string v4, "timeout"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeout:I

    .line 1453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    .line 1454
    const-string v4, "nextType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    .line 1455
    const-string v4, "pattern"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1456
    const-string v4, "length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    .line 1458
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-eqz v4, :cond_fe

    .line 1459
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 1460
    .local v1, "inputFilters":[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v4

    .line 1461
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1465
    .end local v1    # "inputFilters":[Landroid/text/InputFilter;
    :goto_85
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    if-eqz v4, :cond_93

    .line 1466
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eqz v4, :cond_108

    const/4 v4, 0x0

    :goto_90
    invoke-virtual {v5, v4}, Lorg/telegram/ui/LoginActivity$ProgressView;->setVisibility(I)V

    .line 1469
    :cond_93
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1473
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "number":Ljava/lang/String;
    const-string v3, ""

    .line 1475
    .local v3, "str":Ljava/lang/CharSequence;
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10b

    .line 1476
    const-string v4, "SentAppCode"

    const v5, 0x7f0704e9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1484
    :cond_b5
    :goto_b5
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_158

    .line 1487
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1488
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1493
    :goto_c9
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1494
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 1497
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15f

    .line 1498
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1499
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1442
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/CharSequence;
    :cond_ea
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_21

    .line 1443
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto/16 :goto_21

    .line 1463
    :cond_fe
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_85

    .line 1466
    :cond_108
    const/16 v4, 0x8

    goto :goto_90

    .line 1477
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/CharSequence;
    :cond_10b
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_124

    .line 1478
    const-string v4, "SentSmsCode"

    const v5, 0x7f0704ec

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_b5

    .line 1479
    :cond_124
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13e

    .line 1480
    const-string v4, "SentCallCode"

    const v5, 0x7f0704ea

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_b5

    .line 1481
    :cond_13e
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b5

    .line 1482
    const-string v4, "SentCallOnly"

    const v5, 0x7f0704eb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_b5

    .line 1490
    :cond_158
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_c9

    .line 1500
    :cond_15f
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_201

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_16e

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_201

    .line 1501
    :cond_16e
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1502
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1503
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1bd

    .line 1504
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v5, "CallText"

    const v6, 0x7f0700f8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    :cond_1a1
    :goto_1a1
    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isRestored:Z

    if-eqz v4, :cond_1e4

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "callLogNumber":Ljava/lang/String;
    :goto_1ab
    if-eqz v0, :cond_1e6

    .line 1510
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1511
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1513
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto/16 :goto_2

    .line 1505
    .end local v0    # "callLogNumber":Ljava/lang/String;
    :cond_1bd
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a1

    .line 1506
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v5, "SmsText"

    const v6, 0x7f070516

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a1

    .line 1508
    :cond_1e4
    const/4 v0, 0x0

    goto :goto_1ab

    .line 1514
    .restart local v0    # "callLogNumber":Ljava/lang/String;
    :cond_1e6
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v4, :cond_1fc

    .line 1515
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1516
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1518
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto/16 :goto_2

    .line 1520
    :cond_1fc
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_2

    .line 1522
    .end local v0    # "callLogNumber":Ljava/lang/String;
    :cond_201
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24b

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_210

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_24b

    .line 1523
    :cond_210
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1524
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v5, "CallText"

    const v6, 0x7f0700f8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_248

    const/4 v4, 0x0

    :goto_240
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1526
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_2

    .line 1525
    :cond_248
    const/16 v4, 0x8

    goto :goto_240

    .line 1528
    :cond_24b
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1529
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1530
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    goto/16 :goto_2
.end method
