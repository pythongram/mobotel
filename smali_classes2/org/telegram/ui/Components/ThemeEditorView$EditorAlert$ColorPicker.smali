.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
.super Landroid/widget/FrameLayout;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPicker"
.end annotation


# instance fields
.field private alpha:F

.field private alphaGradient:Landroid/graphics/LinearGradient;

.field private alphaPressed:Z

.field private circleDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private circlePressed:Z

.field private colorEditText:[Landroid/widget/EditText;

.field private colorGradient:Landroid/graphics/LinearGradient;

.field private colorHSV:[F

.field private colorPressed:Z

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelRadius:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private hsvTemp:[F

.field private linearLayout:Landroid/widget/LinearLayout;

.field private final paramValueSliderWidth:I

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private valueSliderPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V
    .registers 14
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 181
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_16e

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    .line 178
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setWillNotDraw(Z)V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 195
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_88
    const/4 v0, 0x4

    if-ge v6, v0, :cond_16c

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 208
    if-nez v6, :cond_141

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 217
    :cond_ea
    :goto_ea
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v1, v0, v6

    const/4 v0, 0x3

    if-ne v6, v0, :cond_168

    const/4 v0, 0x6

    :goto_f2
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 218
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/text/InputFilter;

    .line 219
    .local v7, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v7, v0

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 221
    move v8, v6

    .line 222
    .local v8, "num":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v10, v0, v6

    const/16 v0, 0x37

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v6, v4, :cond_16a

    const/high16 v4, 0x41800000    # 16.0f

    :goto_11d
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;

    invoke-direct {v1, p0, p1, v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_88

    .line 210
    .end local v7    # "inputFilters":[Landroid/text/InputFilter;
    .end local v8    # "num":I
    :cond_141
    const/4 v0, 0x1

    if-ne v6, v0, :cond_14e

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string v1, "green"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_ea

    .line 212
    :cond_14e
    const/4 v0, 0x2

    if-ne v6, v0, :cond_15b

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string v1, "blue"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_ea

    .line 214
    :cond_15b
    const/4 v0, 0x3

    if-ne v6, v0, :cond_ea

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_ea

    .line 217
    :cond_168
    const/4 v0, 0x5

    goto :goto_f2

    .line 222
    .restart local v7    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v8    # "num":I
    :cond_16a
    const/4 v4, 0x0

    goto :goto_11d

    .line 279
    .end local v7    # "inputFilters":[Landroid/text/InputFilter;
    .end local v8    # "num":I
    :cond_16c
    return-void

    .line 167
    nop

    :array_16e
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    return-object v0
.end method

.method private createColorWheelBitmap(II)Landroid/graphics/Bitmap;
    .registers 21
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 351
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 353
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0xc

    .line 354
    .local v12, "colorCount":I
    const/16 v11, 0x1e

    .line 355
    .local v11, "colorAngleStep":I
    const/16 v3, 0xd

    new-array v13, v3, [I

    .line 356
    .local v13, "colors":[I
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_84

    .line 357
    .local v15, "hsv":[F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1a
    array-length v3, v13

    move/from16 v0, v16

    if-ge v0, v3, :cond_32

    .line 358
    const/4 v3, 0x0

    mul-int v4, v16, v11

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    aput v4, v15, v3

    .line 359
    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v13, v16

    .line 357
    add-int/lit8 v16, v16, 0x1

    goto :goto_1a

    .line 361
    :cond_32
    const/4 v3, 0x0

    aget v3, v13, v3

    aput v3, v13, v12

    .line 363
    new-instance v17, Landroid/graphics/SweepGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v13, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 364
    .local v17, "sweepGradient":Landroid/graphics/SweepGradient;
    new-instance v2, Landroid/graphics/RadialGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    const/4 v6, -0x1

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 365
    .local v2, "radialGradient":Landroid/graphics/RadialGradient;
    new-instance v14, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 367
    .local v14, "composeShader":Landroid/graphics/ComposeShader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 369
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    .local v10, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 372
    return-object v9

    .line 356
    nop

    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawPointerArrow(Landroid/graphics/Canvas;III)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # I

    .prologue
    .line 331
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 332
    .local v0, "side":I
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    sub-int v3, p3, v0

    add-int v4, p2, v0

    add-int v5, p3, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    int-to-float v1, p2

    int-to-float v2, p3

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 337
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    int-to-float v1, p2

    int-to-float v2, p3

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 339
    return-void
.end method

.method private startColorChange(Z)V
    .registers 10
    .param p1, "start"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->startedColorChange:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v0

    if-ne v0, p1, :cond_b

    .line 390
    :goto_a
    return-void

    .line 379
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 382
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->startedColorChange:Z
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$402(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 385
    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v7, [I

    if-eqz p1, :cond_83

    move v0, v1

    :goto_41
    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 386
    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->containerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/view/ViewGroup;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v7, [F

    if-eqz p1, :cond_86

    const v0, 0x3e4ccccd

    :goto_58
    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    .line 384
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 385
    :cond_83
    const/16 v0, 0x33

    goto :goto_41

    .line 386
    :cond_86
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_58
.end method


# virtual methods
.method public getColor()I
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    .line 293
    .local v10, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v11, v2, v3

    .line 295
    .local v11, "centerY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v3, v10, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 298
    .local v16, "hueAngle":F
    move/from16 v0, v16

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v13, v2, v10

    .line 299
    .local v13, "colorPointX":I
    move/from16 v0, v16

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v14, v2, v11

    .line 301
    .local v14, "colorPointY":I
    const v2, 0x3d99999a

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v3, v3

    mul-float v17, v2, v3

    .line 303
    .local v17, "pointerRadius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 309
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    add-int v19, v2, v3

    .line 310
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v20, v11, v2

    .line 311
    .local v20, "y":I
    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 312
    .local v18, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v15, v2, 0x2

    .line 313
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_103

    .line 314
    new-instance v2, Landroid/graphics/LinearGradient;

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v5, v19, v18

    int-to-float v5, v5

    add-int v6, v20, v15

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/high16 v9, -0x1000000

    aput v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 316
    :cond_103
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v2, v19, v18

    int-to-float v5, v2

    add-int v2, v20, v15

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 318
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v19

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v5, v15

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v19, v2

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_17f

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    .line 323
    .local v12, "color":I
    new-instance v2, Landroid/graphics/LinearGradient;

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v5, v19, v18

    int-to-float v5, v5

    add-int v6, v20, v15

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v12, v7, v8

    const/4 v8, 0x1

    const v9, 0xffffff

    and-int/2addr v9, v12

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 325
    .end local v12    # "color":I
    :cond_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 326
    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v2, v19, v18

    int-to-float v5, v2

    add-int v2, v20, v15

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 327
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v19

    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    sub-float/2addr v4, v5

    int-to-float v5, v15

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 328
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 284
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 285
    .local v0, "heightSize":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 286
    .local v1, "size":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->measureChild(Landroid/view/View;II)V

    .line 287
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setMeasuredDimension(II)V

    .line 288
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 343
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    .line 344
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->createColorWheelBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    .line 346
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 347
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 348
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 395
    .local v3, "action":I
    packed-switch v3, :pswitch_data_3be

    .line 468
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    :goto_b
    return v18

    .line 399
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 400
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 401
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v6, v18, v19

    .line 402
    .local v6, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    const/high16 v19, 0x41000000    # 8.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v7, v18, v19

    .line 403
    .local v7, "centerY":I
    sub-int v9, v16, v6

    .line 404
    .local v9, "cx":I
    sub-int v10, v17, v7

    .line 405
    .local v10, "cy":I
    mul-int v18, v9, v9

    mul-int v19, v10, v10

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 407
    .local v12, "d":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_76

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_f2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_f2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v12, v18

    if-gtz v18, :cond_f2

    .line 408
    :cond_76
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v12, v18

    if-lez v18, :cond_8e

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v12, v0

    .line 411
    :cond_8e
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-double v0, v10

    move-wide/from16 v20, v0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    const-wide v22, 0x4066800000000000L    # 180.0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v12, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    aput v20, v18, v19

    .line 414
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 415
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 417
    :cond_f2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_154

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_18d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_18d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_18d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_18d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_18d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18d

    .line 418
    :cond_154
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    sub-int v18, v17, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    div-float v15, v18, v19

    .line 419
    .local v15, "value":F
    const/16 v18, 0x0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_299

    .line 420
    const/4 v15, 0x0

    .line 424
    :cond_17b
    :goto_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aput v15, v18, v19

    .line 425
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    .line 427
    .end local v15    # "value":F
    :cond_18d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_1f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_237

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_237

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_237

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_237

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_237

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_237

    .line 428
    :cond_1f1
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    sub-int v19, v17, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2a3

    .line 430
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 434
    :cond_22f
    :goto_22f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    .line 436
    :cond_237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_24f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_24f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_397

    .line 437
    :cond_24f
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getColor()I

    move-result v8

    .line 439
    .local v8, "color":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v2, v0, :cond_2b9

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_25d

    .line 421
    .end local v2    # "a":I
    .end local v8    # "color":I
    .restart local v15    # "value":F
    :cond_299
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v15, v18

    if-lez v18, :cond_17b

    .line 422
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_17b

    .line 431
    .end local v15    # "value":F
    :cond_2a3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_22f

    .line 432
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    goto/16 :goto_22f

    .line 442
    .restart local v2    # "a":I
    .restart local v8    # "color":I
    :cond_2b9
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 443
    .local v14, "red":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 444
    .local v11, "green":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 445
    .local v5, "blue":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v18

    if-nez v18, :cond_394

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_369
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_389

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 452
    add-int/lit8 v4, v4, 0x1

    goto :goto_369

    .line 455
    :cond_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 457
    .end local v4    # "b":I
    :cond_394
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->invalidate()V

    .line 460
    .end local v2    # "a":I
    .end local v5    # "blue":I
    .end local v8    # "color":I
    .end local v11    # "green":I
    .end local v14    # "red":I
    :cond_397
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 462
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v9    # "cx":I
    .end local v10    # "cy":I
    .end local v12    # "d":D
    .end local v16    # "x":I
    .end local v17    # "y":I
    :pswitch_39b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    .line 463
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    .line 464
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    .line 465
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    goto/16 :goto_7

    .line 395
    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_c
        :pswitch_39b
        :pswitch_c
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 13
    .param p1, "color"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 472
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 473
    .local v4, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 474
    .local v3, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 475
    .local v2, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 476
    .local v0, "a":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 477
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v5, v9}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 478
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_8b
    const/4 v5, 0x4

    if-ge v1, v5, :cond_a0

    .line 483
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 485
    :cond_a0
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v5, v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 487
    .end local v1    # "b":I
    :cond_a5
    iput-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 488
    iput-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 489
    int-to-float v5, v0

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 490
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 491
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->invalidate()V

    .line 492
    return-void
.end method
