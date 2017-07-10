.class public abstract Lcom/wdullaer/materialdatetimepicker/date/MonthView;
.super Landroid/view/View;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;,
        Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field protected static DAY_SELECTED_CIRCLE_SIZE:I = 0x0

.field protected static DAY_SEPARATOR_WIDTH:I = 0x0

.field protected static final DEFAULT_FOCUS_MONTH:I = -0x1

.field protected static DEFAULT_HEIGHT:I = 0x0

.field protected static final DEFAULT_NUM_DAYS:I = 0x7

.field protected static final DEFAULT_NUM_ROWS:I = 0x6

.field protected static final DEFAULT_SELECTED_DAY:I = -0x1

.field protected static final DEFAULT_SHOW_WK_NUM:I = 0x0

.field protected static final DEFAULT_WEEK_START:I = 0x1

.field protected static final MAX_NUM_ROWS:I = 0x6

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MIN_HEIGHT:I = 0x0

.field protected static MONTH_DAY_LABEL_TEXT_SIZE:I = 0x0

.field protected static MONTH_HEADER_SIZE:I = 0x0

.field protected static MONTH_LABEL_TEXT_SIZE:I = 0x0

.field private static final SELECTED_CIRCLE_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field public static final VIEW_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final VIEW_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field public static final VIEW_PARAMS_MONTH:Ljava/lang/String; = "month"

.field public static final VIEW_PARAMS_NUM_DAYS:Ljava/lang/String; = "num_days"

.field public static final VIEW_PARAMS_SELECTED_DAY:Ljava/lang/String; = "selected_day"

.field public static final VIEW_PARAMS_SHOW_WK_NUM:Ljava/lang/String; = "show_wk_num"

.field public static final VIEW_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field public static final VIEW_PARAMS_YEAR:Ljava/lang/String; = "year"

.field protected static mScale:F


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field protected mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

.field protected final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field protected mDayTextColor:I

.field protected mDisabledDayTextColor:I

.field protected mEdgePadding:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field private final mFormatter:Ljava/util/Formatter;

.field protected mHasToday:Z

.field protected mHighlightedDayTextColor:I

.field protected mLastMonth:I

.field private mLockAccessibilityDelegate:Z

.field protected mMonth:I

.field protected mMonthDayLabelPaint:Landroid/graphics/Paint;

.field protected mMonthDayTextColor:I

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthTitleColor:I

.field protected mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field protected mNumCells:I

.field protected mNumDays:I

.field protected mNumRows:I

.field protected mOnDayClickListener:Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;

.field protected mRowHeight:I

.field protected mSelectedCirclePaint:Landroid/graphics/Paint;

.field protected mSelectedDay:I

.field protected mSelectedDayTextColor:I

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field protected mToday:I

.field protected mTodayNumberColor:I

.field private final mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

.field protected mWeekStart:I

.field protected mWidth:I

.field protected mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const/16 v0, 0x20

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DEFAULT_HEIGHT:I

    .line 103
    const/16 v0, 0xa

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MIN_HEIGHT:I

    .line 114
    const/4 v0, 0x1

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DAY_SEPARATOR_WIDTH:I

    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "controller"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    .line 141
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mFirstJulianDay:I

    .line 143
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mFirstMonth:I

    .line 145
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mLastMonth:I

    .line 153
    sget v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DEFAULT_HEIGHT:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    .line 155
    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mHasToday:Z

    .line 157
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedDay:I

    .line 159
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mToday:I

    .line 161
    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    .line 163
    const/4 v3, 0x7

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    .line 165
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    .line 167
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedLeft:I

    .line 169
    iput v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedRight:I

    .line 175
    const/4 v3, 0x6

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumRows:I

    .line 335
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekStart:I

    .line 197
    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    .line 203
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_day_of_week_label_typeface:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 204
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_sans_serif:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isThemeDark()Z

    move-result v3

    if-eqz v3, :cond_59

    move v0, v2

    .line 207
    .local v0, "darkTheme":Z
    :cond_59
    if-eqz v0, :cond_f4

    .line 208
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_normal_dark_theme:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayTextColor:I

    .line 209
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_month_day_dark_theme:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayTextColor:I

    .line 210
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_disabled_dark_theme:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDisabledDayTextColor:I

    .line 211
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_highlighted_dark_theme:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mHighlightedDayTextColor:I

    .line 219
    :goto_7b
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedDayTextColor:I

    .line 220
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getAccentColor()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTodayNumberColor:I

    .line 221
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitleColor:I

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 224
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mFormatter:Ljava/util/Formatter;

    .line 226
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_day_number_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 227
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_month_label_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    .line 228
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_month_day_label_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    .line 229
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_month_list_item_header_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sput v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_HEADER_SIZE:I

    .line 230
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_day_number_select_circle_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 233
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_date_picker_view_animator_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    .line 237
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthViewTouchHelper()Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    .line 238
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 239
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 240
    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mLockAccessibilityDelegate:Z

    .line 243
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->initView()V

    .line 244
    return-void

    .line 214
    :cond_f4
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_normal:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayTextColor:I

    .line 215
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_month_day:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayTextColor:I

    .line 216
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_disabled:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDisabledDayTextColor:I

    .line 217
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_highlighted:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mHighlightedDayTextColor:I

    goto/16 :goto_7b
.end method

.method static synthetic access$000(Lcom/wdullaer/materialdatetimepicker/date/MonthView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/date/MonthView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->onDayClick(I)V

    return-void
.end method

.method private calculateNumRows()I
    .registers 6

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->findDayOffset()I

    move-result v1

    .line 410
    .local v1, "offset":I
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    div-int v0, v3, v4

    .line 411
    .local v0, "dividend":I
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    rem-int v2, v3, v4

    .line 412
    .local v2, "remainder":I
    if-lez v2, :cond_17

    const/4 v3, 0x1

    :goto_15
    add-int/2addr v3, v0

    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 453
    .local v1, "locale":Ljava/util/Locale;
    const-string v2, "MMMM yyyy"

    .line 455
    .local v2, "pattern":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_33

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_date_v1_monthyear:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_1a
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 459
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 461
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_33
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method private getWeekDayLabel(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 11
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 624
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 627
    .local v3, "locale":Ljava/util/Locale;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_ae

    .line 628
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "E"

    invoke-direct {v4, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "dayName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "dayLabel":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 633
    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 634
    .local v2, "len":I
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 638
    .end local v2    # "len":I
    :cond_4e
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "he"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 639
    :cond_66
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v7, :cond_a5

    .line 640
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 641
    .restart local v2    # "len":I
    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 651
    .end local v2    # "len":I
    :cond_7a
    :goto_7a
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ca"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 652
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_8f
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a4

    .line 656
    const-string v0, "X"

    .line 661
    .end local v0    # "dayLabel":Ljava/lang/String;
    .end local v1    # "dayName":Ljava/lang/String;
    :cond_a4
    :goto_a4
    return-object v0

    .line 646
    .restart local v0    # "dayLabel":Ljava/lang/String;
    .restart local v1    # "dayName":Ljava/lang/String;
    :cond_a5
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a

    .line 661
    .end local v0    # "dayLabel":Ljava/lang/String;
    .end local v1    # "dayName":Ljava/lang/String;
    :cond_ae
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEEEE"

    invoke-direct {v4, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a4
.end method

.method private onDayClick(I)V
    .registers 6
    .param p1, "day"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-interface {v0, v1, v2, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isOutOfRange(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 595
    :goto_c
    return-void

    .line 589
    :cond_d
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mOnDayClickListener:Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;

    if-eqz v0, :cond_1f

    .line 590
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mOnDayClickListener:Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-direct {v1, v2, v3, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;->onDayClick(Lcom/wdullaer/materialdatetimepicker/date/MonthView;Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 594
    :cond_1f
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_c
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .registers 6
    .param p1, "day"    # I
    .param p2, "today"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 416
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 682
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public abstract drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V
.end method

.method protected drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v6

    sget v7, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 472
    .local v5, "y":I
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v1, v6, v7

    .line 474
    .local v1, "dayWidthHalf":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    if-ge v2, v6, :cond_42

    .line 475
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v1

    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    add-int v4, v6, v7

    .line 477
    .local v4, "x":I
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    rem-int v0, v6, v7

    .line 478
    .local v0, "calendarDay":I
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 479
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v6}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getWeekDayLabel(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "weekString":Ljava/lang/String;
    int-to-float v6, v4

    int-to-float v7, v5

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 482
    .end local v0    # "calendarDay":I
    .end local v3    # "weekString":Ljava/lang/String;
    .end local v4    # "x":I
    :cond_42
    return-void
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 491
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    add-int v6, v0, v1

    .line 493
    .local v6, "y":I
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v11, v0, v1

    .line 494
    .local v11, "dayWidthHalf":F
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->findDayOffset()I

    move-result v12

    .line 495
    .local v12, "j":I
    const/4 v4, 0x1

    .local v4, "dayNumber":I
    :goto_25
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    if-gt v4, v0, :cond_61

    .line 496
    mul-int/lit8 v0, v12, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v11

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 498
    .local v5, "x":I
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int v13, v0, v1

    .line 500
    .local v13, "yRelativeToDay":I
    int-to-float v0, v5

    sub-float/2addr v0, v11

    float-to-int v7, v0

    .line 501
    .local v7, "startX":I
    int-to-float v0, v5

    add-float/2addr v0, v11

    float-to-int v8, v0

    .line 502
    .local v8, "stopX":I
    sub-int v9, v6, v13

    .line 503
    .local v9, "startY":I
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    add-int v10, v9, v0

    .line 505
    .local v10, "stopY":I
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V

    .line 507
    add-int/lit8 v12, v12, 0x1

    .line 508
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    if-ne v12, v0, :cond_5e

    .line 509
    const/4 v12, 0x0

    .line 510
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    add-int/2addr v6, v0

    .line 495
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 513
    .end local v5    # "x":I
    .end local v7    # "startX":I
    .end local v8    # "stopX":I
    .end local v9    # "startY":I
    .end local v10    # "stopY":I
    .end local v13    # "yRelativeToDay":I
    :cond_61
    return-void
.end method

.method protected drawMonthTitle(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 465
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 466
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v2

    sget v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 467
    .local v1, "y":I
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 468
    return-void
.end method

.method protected findDayOffset()I
    .registers 3

    .prologue
    .line 533
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    if-ge v0, v1, :cond_f

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_b
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_f
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekStart:I

    goto :goto_b
.end method

.method public getAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .registers 5

    .prologue
    .line 669
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 670
    .local v0, "day":I
    if-ltz v0, :cond_12

    .line 671
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-direct {v1, v2, v3, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    .line 673
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getDayFromLocation(FF)I
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getInternalDayFromLocation(FF)I

    move-result v0

    .line 547
    .local v0, "day":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    if-le v0, v1, :cond_c

    .line 548
    :cond_b
    const/4 v0, -0x1

    .line 550
    .end local v0    # "day":I
    :cond_c
    return v0
.end method

.method protected getInternalDayFromLocation(FF)I
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 561
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    .line 562
    .local v2, "dayStart":I
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_11

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_13

    .line 563
    :cond_11
    const/4 v1, -0x1

    .line 571
    :goto_12
    return v1

    .line 566
    :cond_13
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    div-int v3, v4, v5

    .line 567
    .local v3, "row":I
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 569
    .local v0, "column":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->findDayOffset()I

    move-result v4

    sub-int v4, v0, v4

    add-int/lit8 v1, v4, 0x1

    .line 570
    .local v1, "day":I
    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 571
    goto :goto_12
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    return v0
.end method

.method protected getMonthHeaderSize()I
    .registers 2

    .prologue
    .line 447
    sget v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_HEADER_SIZE:I

    return v0
.end method

.method protected getMonthViewTouchHelper()Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;
    .registers 2

    .prologue
    .line 251
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;-><init>(Lcom/wdullaer/materialdatetimepicker/date/MonthView;Landroid/view/View;)V

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    return v0
.end method

.method protected initView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 294
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    .line 295
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 296
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    .line 304
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 305
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 306
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 308
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Roboto-Medium"

    invoke-static {v1, v2}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 316
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 318
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 321
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 325
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 326
    return-void
.end method

.method protected isHighlighted(III)Z
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 604
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v7}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getHighlightedDays()[Ljava/util/Calendar;

    move-result-object v2

    .line 605
    .local v2, "highlightedDays":[Ljava/util/Calendar;
    if-nez v2, :cond_d

    .line 615
    :cond_c
    :goto_c
    return v5

    .line 606
    :cond_d
    move-object v0, v2

    .local v0, "arr$":[Ljava/util/Calendar;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_10
    if-ge v3, v4, :cond_c

    aget-object v1, v0, v3

    .line 607
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt p1, v7, :cond_c

    .line 608
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-le p1, v7, :cond_23

    .line 606
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 609
    :cond_23
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt p2, v7, :cond_c

    .line 610
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-gt p2, v7, :cond_20

    .line 611
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt p3, v7, :cond_c

    .line 612
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-gt p3, v7, :cond_20

    move v5, v6

    .line 613
    goto :goto_c
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->drawMonthDayLabels(Landroid/graphics/Canvas;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->drawMonthNums(Landroid/graphics/Canvas;)V

    .line 333
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 423
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumRows:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->setMeasuredDimension(II)V

    .line 425
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    .line 432
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 433
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 286
    :cond_7
    :goto_7
    const/4 v1, 0x1

    return v1

    .line 280
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 281
    .local v0, "day":I
    if-ltz v0, :cond_7

    .line 282
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->onDayClick(I)V

    goto :goto_7

    .line 278
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z
    .registers 4
    .param p1, "day"    # Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    .prologue
    .line 692
    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    if-ne v0, v1, :cond_12

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    if-ne v0, v1, :cond_12

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->day:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    if-le v0, v1, :cond_14

    .line 693
    :cond_12
    const/4 v0, 0x0

    .line 696
    :goto_13
    return v0

    .line 695
    :cond_14
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    .line 696
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public reuse()V
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumRows:I

    .line 405
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->requestLayout()V

    .line 406
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 3
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_7

    .line 259
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 261
    :cond_7
    return-void
.end method

.method public setDatePickerController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .registers 2
    .param p1, "controller"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    .line 248
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 348
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 349
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "You must specify month and year for this view"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->setTag(Ljava/lang/Object;)V

    .line 353
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 354
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    .line 355
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    sget v4, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MIN_HEIGHT:I

    if-ge v3, v4, :cond_3d

    .line 356
    sget v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->MIN_HEIGHT:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    .line 359
    :cond_3d
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 360
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedDay:I

    .line 364
    :cond_53
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    .line 365
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 371
    .local v2, "today":Ljava/util/Calendar;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mHasToday:Z

    .line 372
    const/4 v3, -0x1

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mToday:I

    .line 374
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 375
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mDayOfWeekStart:I

    .line 379
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 380
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    .line 385
    :goto_ac
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b5
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    if-ge v1, v3, :cond_d1

    .line 387
    add-int/lit8 v0, v1, 0x1

    .line 388
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 389
    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mHasToday:Z

    .line 390
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mToday:I

    .line 386
    :cond_c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 382
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_c8
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWeekStart:I

    goto :goto_ac

    .line 393
    .restart local v1    # "i":I
    :cond_d1
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumRows:I

    .line 396
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mTouchHelper:Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 397
    return-void
.end method

.method public setOnDayClickListener(Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mOnDayClickListener:Lcom/wdullaer/materialdatetimepicker/date/MonthView$OnDayClickListener;

    .line 265
    return-void
.end method

.method public setSelectedDay(I)V
    .registers 2
    .param p1, "day"    # I

    .prologue
    .line 400
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedDay:I

    .line 401
    return-void
.end method
