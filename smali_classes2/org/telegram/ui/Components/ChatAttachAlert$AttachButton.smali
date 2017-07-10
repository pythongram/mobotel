.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButton"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .registers 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 171
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x31

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const-string v1, "dialogTextGray2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v4, 0x42800000    # 64.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 189
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 190
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method
