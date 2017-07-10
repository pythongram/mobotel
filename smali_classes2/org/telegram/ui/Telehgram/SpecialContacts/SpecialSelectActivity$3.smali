.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;
.super Landroid/widget/ScrollView;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->ignoreScrollEvent:Z
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->ignoreScrollEvent:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$302(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;Z)Z

    .line 434
    :goto_e
    return v0

    .line 431
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 432
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->fieldY:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 433
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->fieldY:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)I

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 434
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_e
.end method
