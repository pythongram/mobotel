.class Lorg/telegram/ui/Components/PhotoPaintView$19;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;

.field final synthetic val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 1078
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/high16 v11, 0x41900000    # 18.0f

    const/4 v10, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 1081
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v4, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1084
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v0, "deleteView":Landroid/widget/TextView;
    const-string v5, "actionBarDefaultSubmenuItem"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1086
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1088
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1089
    invoke-virtual {v0, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1090
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1091
    const-string v5, "PaintDelete"

    const v6, 0x7f0703f4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    new-instance v5, Lorg/telegram/ui/Components/PhotoPaintView$19$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PhotoPaintView$19$1;-><init>(Lorg/telegram/ui/Components/PhotoPaintView$19;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    const/16 v5, 0x30

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v5, v5, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_c1

    .line 1105
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v2, "editView":Landroid/widget/TextView;
    const-string v5, "actionBarDefaultSubmenuItem"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1107
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1108
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1109
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1110
    invoke-virtual {v2, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1111
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1112
    const-string v5, "PaintEdit"

    const v6, 0x7f0703f7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    new-instance v5, Lorg/telegram/ui/Components/PhotoPaintView$19$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PhotoPaintView$19$2;-><init>(Lorg/telegram/ui/Components/PhotoPaintView$19;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    const/16 v5, 0x30

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    .end local v2    # "editView":Landroid/widget/TextView;
    :cond_c1
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1127
    .local v1, "duplicateView":Landroid/widget/TextView;
    const-string v5, "actionBarDefaultSubmenuItem"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1128
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1130
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1131
    invoke-virtual {v1, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1132
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1133
    const-string v5, "PaintDuplicate"

    const v6, 0x7f0703f6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    new-instance v5, Lorg/telegram/ui/Components/PhotoPaintView$19$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PhotoPaintView$19$3;-><init>(Lorg/telegram/ui/Components/PhotoPaintView$19;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    const/16 v5, 0x30

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1148
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1149
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1150
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1151
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    return-void
.end method
