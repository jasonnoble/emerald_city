atom_feed do |feed|
  feed.title "Who bought #{@product.title}"
  feed.updated @orders.first.created_at
  for order in @orders
    feed.entry(order) do |entry|
      entry.title "Order #{order.id}"
      entry.summary :type => 'xhtml' do
        entry.div :xmlns => 'http://www.w3.org/1999/xhtml' do |xhtml|
          xhtml.p pluralize(order.line_items.count, "line item")
          xhtml.p "Shipped to #{order.address}"
          xhtml.p "Paid by #{order.pay_type}"
        end
      end
      entry.author do |author|
        entry.name order.name
        entry.email order.email
      end
    end
  end
end