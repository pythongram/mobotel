.class Lorg/telegram/ui/DialogsActivity$29;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 1914
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$29;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x42480000    # 50.0f

    const/4 v4, 0x0

    .line 1917
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    # setter for: Lorg/telegram/ui/DialogsActivity;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$3902(Lorg/telegram/ui/DialogsActivity;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    .line 1918
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    # setter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1919
    const/4 v2, 0x1

    .line 1920
    .local v2, "i":I
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    # setter for: Lorg/telegram/ui/DialogsActivity;->touchPositionDP:F
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$4102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1921
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->hideTabs:Z
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1949
    :cond_41
    :goto_41
    return v4

    .line 1924
    :cond_42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_130

    goto :goto_41

    .line 1926
    :pswitch_4a
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    # setter for: Lorg/telegram/ui/DialogsActivity;->downX:F
    invoke-static {v3, v5}, Lorg/telegram/ui/DialogsActivity;->access$4202(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1927
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    # setter for: Lorg/telegram/ui/DialogsActivity;->downY:F
    invoke-static {v3, v5}, Lorg/telegram/ui/DialogsActivity;->access$4302(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1928
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->downX:F
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_8b

    .line 1929
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1931
    :cond_8b
    instance-of v4, p1, Landroid/widget/LinearLayout;

    goto :goto_41

    .line 1933
    :pswitch_8e
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    # setter for: Lorg/telegram/ui/DialogsActivity;->upX:F
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$4502(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1934
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    # setter for: Lorg/telegram/ui/DialogsActivity;->upY:F
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$4602(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1935
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->downX:F
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->upX:F
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$4500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    sub-float v0, v3, v6

    .line 1936
    .local v0, "deltaX":F
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->downY:F
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->upY:F
    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    sub-float v1, v3, v6

    .line 1937
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_114

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x42700000    # 60.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_114

    .line 1938
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_12d

    move v3, v4

    :goto_f0
    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshDialogType(I)V
    invoke-static {v6, v3}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;I)V

    .line 1939
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->vDPI:F
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    # setter for: Lorg/telegram/ui/DialogsActivity;->downX:F
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$4202(Lorg/telegram/ui/DialogsActivity;F)F

    .line 1940
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$29;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 1941
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1943
    :cond_114
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->downX:F
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    cmpg-float v3, v3, v8

    if-lez v3, :cond_41

    .line 1946
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_41

    :cond_12d
    move v3, v5

    .line 1938
    goto :goto_f0

    .line 1924
    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_8e
    .end packed-switch
.end method
