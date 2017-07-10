.class public Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2530
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2531
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    .line 2532
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 2536
    const/16 v0, 0xe

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 2541
    int-to-long v0, p1

    return-wide v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2552
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 2557
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_22

    .line 2558
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f02027d

    const-string v3, "Enhance"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    .line 2592
    :cond_21
    :goto_21
    return-void

    .line 2559
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_44

    .line 2560
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020280

    const-string v3, "Highlights"

    const v4, 0x7f07027d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_21

    .line 2561
    :cond_44
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_66

    .line 2562
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020278

    const-string v3, "Contrast"

    const v4, 0x7f070192

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_21

    .line 2563
    :cond_66
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_88

    .line 2564
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020277

    const-string v3, "Exposure"

    const v4, 0x7f070212

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto :goto_21

    .line 2565
    :cond_88
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_ab

    .line 2566
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020286

    const-string v3, "Warmth"

    const v4, 0x7f07059d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2567
    :cond_ab
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_ce

    .line 2568
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020282

    const-string v3, "Saturation"

    const v4, 0x7f0704ad

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2569
    :cond_ce
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_f1

    .line 2570
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020285

    const-string v3, "Vignette"

    const v4, 0x7f070578

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2571
    :cond_f1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_114

    .line 2572
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020283

    const-string v3, "Shadows"

    const v4, 0x7f0704fc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2573
    :cond_114
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_137

    .line 2574
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f02027f

    const-string v3, "Grain"

    const v4, 0x7f07026e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2575
    :cond_137
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_15a

    .line 2576
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f02027c

    const-string v3, "Sharpen"

    const v4, 0x7f07050b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2577
    :cond_15a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_18c

    .line 2578
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f020284

    const-string v2, "Tint"

    const v4, 0x7f070543

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-nez v2, :cond_182

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-eqz v2, :cond_189

    :cond_182
    const-string v2, "\u25c6"

    :goto_184
    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_189
    const-string v2, ""

    goto :goto_184

    .line 2579
    :cond_18c
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_1af

    .line 2580
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f02027e

    const-string v3, "Fade"

    const v4, 0x7f070214

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;F)V

    goto/16 :goto_21

    .line 2581
    :cond_1af
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_1dd

    .line 2582
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v3, 0x7f02027b

    const-string v2, "Curves"

    const v4, 0x7f0701aa

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v2

    if-eqz v2, :cond_1da

    const-string v2, ""

    :goto_1d5
    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_1da
    const-string v2, "\u25c6"

    goto :goto_1d5

    .line 2583
    :cond_1dd
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne p2, v1, :cond_21

    .line 2584
    const-string v0, ""

    .line 2585
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_207

    .line 2586
    const-string v0, "R"

    .line 2590
    :cond_1f2
    :goto_1f2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const v2, 0x7f020276

    const-string v3, "Blur"

    const v4, 0x7f0700d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 2587
    :cond_207
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f2

    .line 2588
    const-string v0, "L"

    goto :goto_1f2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 2546
    new-instance v0, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->toolCellWidth:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;-><init>(Landroid/content/Context;I)V

    .line 2547
    .local v0, "view":Lorg/telegram/ui/Cells/PhotoEditToolCell;
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
