.class Lorg/telegram/ui/ChatActivity$22;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2273
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 2276
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_12

    .line 2288
    :goto_11
    return-void

    .line 2279
    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2280
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getCustomDate()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2281
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2282
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2283
    .local v2, "monthOfYear":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2285
    .local v1, "dayOfMonth":I
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2286
    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 2287
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-int v5, v6

    # invokes: Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$9900(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_11
.end method
