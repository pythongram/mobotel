.class Lorg/telegram/ui/CallLogActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 476
    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 477
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    .line 486
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 487
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 488
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$600(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 492
    :cond_20
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 566
    const/4 v0, 0x0

    .line 570
    :goto_d
    return v0

    .line 567
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$600(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 568
    const/4 v0, 0x1

    goto :goto_d

    .line 570
    :cond_24
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 481
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 534
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_82

    .line 535
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CallLogActivity$ViewItem;

    .line 536
    .local v9, "viewItem":Lorg/telegram/ui/CallLogActivity$ViewItem;
    iget-object v0, v9, Lorg/telegram/ui/CallLogActivity$ViewItem;->cell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 537
    .local v0, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 538
    .local v8, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    iget-object v1, v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 540
    .local v6, "last":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_83

    const-string v7, "\u202b"

    .line 541
    .local v7, "ldir":Ljava/lang/String;
    :goto_2b
    iget-object v1, v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_86

    .line 542
    new-instance v4, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 546
    .local v4, "subtitle":Landroid/text/SpannableString;
    :goto_57
    iget v1, v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    packed-switch v1, :pswitch_data_102

    .line 557
    :goto_5c
    iget-object v1, v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_7a

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$600(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v1

    if-nez v1, :cond_fe

    :cond_7a
    const/4 v1, 0x1

    :goto_7b
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 559
    iget-object v1, v9, Lorg/telegram/ui/CallLogActivity$ViewItem;->button:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 561
    .end local v0    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v4    # "subtitle":Landroid/text/SpannableString;
    .end local v6    # "last":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "ldir":Ljava/lang/String;
    .end local v8    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v9    # "viewItem":Lorg/telegram/ui/CallLogActivity$ViewItem;
    :cond_82
    return-void

    .line 540
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .restart local v6    # "last":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v8    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .restart local v9    # "viewItem":Lorg/telegram/ui/CallLogActivity$ViewItem;
    :cond_83
    const-string v7, ""

    goto :goto_2b

    .line 544
    .restart local v7    # "ldir":Ljava/lang/String;
    :cond_86
    new-instance v4, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (%d) %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, v8, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v4    # "subtitle":Landroid/text/SpannableString;
    goto :goto_57

    .line 548
    :pswitch_bd
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->iconOut:Landroid/text/style/ImageSpan;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$1700(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5c

    .line 551
    :pswitch_d2
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->iconIn:Landroid/text/style/ImageSpan;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$1800(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5c

    .line 554
    :pswitch_e8
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->iconMissed:Landroid/text/style/ImageSpan;
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$1900(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5c

    .line 558
    :cond_fe
    const/4 v1, 0x0

    goto/16 :goto_7b

    .line 546
    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_d2
        :pswitch_e8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 14
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 498
    packed-switch p2, :pswitch_data_b6

    .line 525
    new-instance v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 526
    .local v10, "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0200d7

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    :goto_1b
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 500
    .end local v10    # "view":Landroid/view/View;
    :pswitch_21
    new-instance v8, Lorg/telegram/ui/CallLogActivity$CustomCell;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/CallLogActivity$CustomCell;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V

    .line 501
    .local v8, "frameLayout":Lorg/telegram/ui/CallLogActivity$CustomCell;
    const-string v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/CallLogActivity$CustomCell;->setBackgroundColor(I)V

    .line 503
    new-instance v7, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 504
    .local v7, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setPaddingRight(I)V

    .line 505
    invoke-virtual {v8, v7}, Lorg/telegram/ui/CallLogActivity$CustomCell;->addView(Landroid/view/View;)V

    .line 507
    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 508
    .local v9, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f020235

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    const/16 v0, 0xd6

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 510
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "windowBackgroundWhiteGrayIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 511
    const/high16 v0, 0x2f000000

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->callBtnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$1600(Lorg/telegram/ui/CallLogActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a1

    const/4 v2, 0x3

    :goto_89
    or-int/lit8 v2, v2, 0x10

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/telegram/ui/CallLogActivity$CustomCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    move-object v10, v8

    .line 517
    .restart local v10    # "view":Landroid/view/View;
    new-instance v0, Lorg/telegram/ui/CallLogActivity$ViewItem;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v0, v1, v9, v7}, Lorg/telegram/ui/CallLogActivity$ViewItem;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/widget/ImageView;Lorg/telegram/ui/Cells/ProfileSearchCell;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 514
    .end local v10    # "view":Landroid/view/View;
    :cond_a1
    const/4 v2, 0x5

    goto :goto_89

    .line 520
    .end local v7    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v8    # "frameLayout":Lorg/telegram/ui/CallLogActivity$CustomCell;
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :pswitch_a3
    new-instance v10, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 521
    .restart local v10    # "view":Landroid/view/View;
    const-string v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1b

    .line 498
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_21
        :pswitch_a3
    .end packed-switch
.end method
