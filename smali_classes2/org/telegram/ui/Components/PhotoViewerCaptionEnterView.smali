.class public Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.super Landroid/widget/FrameLayout;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    }
.end annotation


# instance fields
.field private audioInterfaceState:I

.field private final captionMaxLength:I

.field private currentActionMode:Landroid/view/ActionMode;

.field private delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private forceFloatingEmoji:Z

.field private innerTextChange:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private messageEditText:Landroid/widget/EditText;

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/ObjectAnimator;

.field private runningAnimationType:I

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field private windowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
    .param p3, "window"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/16 v0, 0xc8

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionMaxLength:I

    .line 87
    const/high16 v0, 0x7f000000

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setBackgroundColor(I)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusable(Z)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusableInTouchMode(Z)V

    .line 90
    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    .line 92
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .line 94
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v10, "textFieldContainer":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    if-eqz v0, :cond_a9

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 185
    :cond_a9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const-string v1, "AddCaption"

    const v2, 0x7f070065

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 197
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/text/InputFilter;

    .line 198
    .local v9, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v9, v0

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 200
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/high16 v3, 0x42500000    # 52.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v7, "doneButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 266
    const v0, 0x7f020114

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    const/16 v0, 0x30

    const/16 v1, 0x30

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_183

    .line 269
    const v0, 0x40ffffff

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :cond_183
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->fixActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private fixActionMode(Landroid/view/ActionMode;)V
    .registers 16
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 299
    :try_start_0
    const-string v12, "com.android.internal.view.FloatingActionMode"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 300
    .local v0, "classActionMode":Ljava/lang/Class;
    const-string v12, "mFloatingToolbar"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 301
    .local v5, "fieldToolbar":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 302
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 304
    .local v11, "toolbar":Ljava/lang/Object;
    const-string v12, "com.android.internal.widget.FloatingToolbar"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 305
    .local v1, "classToolbar":Ljava/lang/Class;
    const-string v12, "mPopup"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 306
    .local v6, "fieldToolbarPopup":Ljava/lang/reflect/Field;
    const-string v12, "mWidthChanged"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 307
    .local v8, "fieldToolbarWidth":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 308
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 311
    .local v10, "popup":Ljava/lang/Object;
    const-string v12, "com.android.internal.widget.FloatingToolbar$FloatingToolbarPopup"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 312
    .local v2, "classToolbarPopup":Ljava/lang/Class;
    const-string v12, "mParent"

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 313
    .local v7, "fieldToolbarPopupParent":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 315
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 316
    .local v3, "currentView":Landroid/view/View;
    iget-object v12, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    if-eq v3, v12, :cond_64

    .line 317
    iget-object v12, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    invoke-virtual {v7, v10, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    const-string v12, "updateViewLocationInWindow"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 320
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 321
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v9, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_65

    .line 326
    .end local v0    # "classActionMode":Ljava/lang/Class;
    .end local v1    # "classToolbar":Ljava/lang/Class;
    .end local v2    # "classToolbarPopup":Ljava/lang/Class;
    .end local v3    # "currentView":Landroid/view/View;
    .end local v5    # "fieldToolbar":Ljava/lang/reflect/Field;
    .end local v6    # "fieldToolbarPopup":Ljava/lang/reflect/Field;
    .end local v7    # "fieldToolbarPopupParent":Ljava/lang/reflect/Field;
    .end local v8    # "fieldToolbarWidth":Ljava/lang/reflect/Field;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "popup":Ljava/lang/Object;
    .end local v11    # "toolbar":Ljava/lang/Object;
    :cond_64
    :goto_64
    return-void

    .line 323
    :catch_65
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_64
.end method

.method private onWindowSizeChanged()V
    .registers 3

    .prologue
    .line 329
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getHeight()I

    move-result v0

    .line 330
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v1, :cond_d

    .line 331
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 333
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v1, :cond_16

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onWindowSizeChanged(I)V

    .line 336
    :cond_16
    return-void
.end method

.method private openKeyboardInternal()V
    .registers 2

    .prologue
    .line 568
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 569
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    .line 570
    return-void

    .line 568
    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private showPopup(I)V
    .registers 9
    .param p1, "show"    # I

    .prologue
    const/high16 v6, 0x43480000    # 200.0f

    const/4 v5, 0x0

    .line 431
    const/4 v2, 0x1

    if-ne p1, v2, :cond_a3

    .line 432
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v2, :cond_26

    .line 433
    new-instance v2, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v5, v5, v3}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 434
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;)V

    .line 521
    :cond_26
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 523
    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    if-gtz v2, :cond_43

    .line 524
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "kbd_height"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 526
    :cond_43
    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    if-gtz v2, :cond_5b

    .line 527
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "kbd_height_land3"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 529
    :cond_5b
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_a0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 531
    .local v0, "currentHeight":I
    :goto_67
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 532
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 533
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 534
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_89

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez v2, :cond_89

    .line 536
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 538
    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v2, :cond_9f

    .line 539
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 540
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 541
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f02012e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 559
    .end local v0    # "currentHeight":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9f
    :goto_9f
    return-void

    .line 529
    :cond_a0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    goto :goto_67

    .line 545
    :cond_a3
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_af

    .line 546
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f020175

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    :cond_af
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v2, :cond_ba

    .line 549
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 551
    :cond_ba
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v2, :cond_9f

    .line 552
    if-nez p1, :cond_c2

    .line 553
    iput v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 555
    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 556
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_9f
.end method


# virtual methods
.method public closeKeyboard()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 600
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 660
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_d

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_d

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 665
    :cond_d
    return-void
.end method

.method public getCursorPosition()I
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    goto :goto_5
.end method

.method public getEmojiPadding()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    return v0
.end method

.method public getFieldCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideActionMode()Z
    .registers 4

    .prologue
    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_19

    .line 286
    :try_start_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_14

    .line 290
    :goto_f
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    .line 291
    const/4 v1, 0x1

    .line 293
    :goto_13
    return v1

    .line 287
    :catch_14
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public hidePopup()V
    .registers 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 565
    :cond_a
    return-void
.end method

.method public isKeyboardVisible()Z
    .registers 2

    .prologue
    .line 603
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPopupView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 341
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 345
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    .line 348
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_22

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 353
    :cond_22
    return-void
.end method

.method public onSizeChanged(IZ)V
    .registers 10
    .param p1, "height"    # I
    .param p2, "isWidthGreater"    # Z

    .prologue
    const/4 v4, 0x0

    .line 608
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le p1, v3, :cond_30

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v3, :cond_30

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_30

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez v3, :cond_30

    .line 609
    if-eqz p2, :cond_77

    .line 610
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 611
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "emoji"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "kbd_height_land3"

    iget v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 620
    if-eqz p2, :cond_91

    .line 621
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 626
    .local v1, "newHeight":I
    :goto_3a
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 627
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v3, v5, :cond_4e

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v1, :cond_6b

    .line 628
    :cond_4e
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 629
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 630
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v3, :cond_6b

    .line 632
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 633
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 634
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 639
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "newHeight":I
    :cond_6b
    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    if-ne v3, p1, :cond_94

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    if-ne v3, p2, :cond_94

    .line 640
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 656
    :goto_76
    return-void

    .line 613
    :cond_77
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 614
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "emoji"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "kbd_height"

    iget v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_30

    .line 623
    :cond_91
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .restart local v1    # "newHeight":I
    goto :goto_3a

    .line 643
    .end local v1    # "newHeight":I
    :cond_94
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    .line 644
    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    .line 646
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 647
    .local v2, "oldValue":Z
    if-lez p1, :cond_c9

    const/4 v3, 0x1

    :goto_9d
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 648
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v3, :cond_ac

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 649
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 651
    :cond_ac
    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    if-eqz v3, :cond_c5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v3, :cond_c5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eq v3, v2, :cond_c5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_c5

    .line 652
    iput v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 653
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 655
    :cond_c5
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_76

    :cond_c9
    move v3, v4

    .line 647
    goto :goto_9d
.end method

.method public openKeyboard()V
    .registers 12

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_39

    move-result v8

    .line 580
    .local v8, "currentSelection":I
    :goto_6
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 581
    .local v10, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 582
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 583
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 585
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 588
    :try_start_33
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_44

    .line 592
    :goto_38
    return-void

    .line 576
    .end local v8    # "currentSelection":I
    .end local v10    # "event":Landroid/view/MotionEvent;
    :catch_39
    move-exception v9

    .line 577
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v8

    .line 578
    .restart local v8    # "currentSelection":I
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 589
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "event":Landroid/view/MotionEvent;
    :catch_44
    move-exception v9

    .line 590
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public replaceWithText(IILjava/lang/String;)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 379
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-gt v2, v3, :cond_2d

    .line 383
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 390
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_2c
    return-void

    .line 385
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_2c

    .line 387
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_39
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    .line 357
    return-void
.end method

.method public setFieldFocused(Z)V
    .registers 6
    .param p1, "focus"    # Z

    .prologue
    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 416
    :cond_4
    :goto_4
    return-void

    .line 396
    :cond_5
    if-eqz p1, :cond_1c

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 412
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v0, :cond_4

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_4
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 368
    :cond_4
    :goto_4
    return-void

    .line 363
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setForceFloatingEmoji(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    .line 281
    return-void
.end method
