Warden::Manager.after_authentication do |user, auth, options|
  if user.respond_to?(:with_safeguard_authentication?)
    if auth.session(options[:scope])[:with_safeguard_authentication] = user.with_safeguard_authentication?(auth.request)
      auth.session(options[:scope])[:id] = user.id
    end
  end
end
